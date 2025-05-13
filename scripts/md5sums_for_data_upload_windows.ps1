param(
    [string]$FolderPath = $(throw "Please provide a folder path.")
)

# Check if the provided folder path exists
if (-not (Test-Path $FolderPath -PathType Container)) {
    Write-Host "Error: The specified folder path does not exist." -ForegroundColor Red
    exit 1
}

# Create a file path for the output file in the same folder
$OutputFilePath = Join-Path -Path $FolderPath -ChildPath "checksums.md5"


# Get all files in the specified folder and subfolders (recursively)
$Files = Get-ChildItem -Path $FolderPath -File -Recurse


# Initialize an empty array to store the output data
$OutputData = @()

# Get the common part of the path
$CommonPath = (Resolve-Path -Path $FolderPath).ProviderPath

# Iterate over each file and calculate MD5 checksum
foreach ($File in $Files) {
    $MD5Hash = Get-FileHash -Path $File.FullName -Algorithm MD5
    # Convert the MD5 hash to lowercase
    $LowercaseMD5Hash = $MD5Hash.Hash.ToLower()
    # Calculate the relative path for the file
    $RelativePath = $File.FullName -replace [regex]::Escape($CommonPath), ""

    # Add the MD5 hash and relative path to the output data array
    $OutputData += "$LowercaseMD5Hash`t$RelativePath"
}

# Write the output data to the output file
$OutputData | Out-File -FilePath $OutputFilePath -Encoding utf8 -Append

Write-Host "MD5 sums written to '$OutputFilePath'."
