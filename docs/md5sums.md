# Generate MD5 Checksums for Data Upload

## Linux/MacOS

This script computes MD5 hashes for all files within a directory tree. Two output formats are supported:

- **One file per directory**: all checksums saved into a single file (`checksums.md5`)
- **One file per file**: each checksum saved to a separate `.md5` file

### Location

The script is available here: [`scripts/md5sums_for_data_upload.sh`](scripts/md5sums_for_data_upload.sh)

### Usage

Download the script and place it in the directory that is one level above the data directory containing the files for which you want to compute the md5sums.

### Basic command

```bash
# display help:
./md5sums_for_data_upload.sh -h
# run script:
./md5sums_for_data_upload.sh <input_dir> --per_folder
./md5sums_for_data_upload.sh <input_dir> --per_file
``` 

## Windows

⚠️ **Important Note:** We strongly recommend using **Windows Subsystem for Linux (WSL)**  as explained [here](./wsl.md). You can then follow the instructions for Linux/MacOS.

This script calculates MD5 checksums of all files in the specified directory and saves them to a file named `checksums.md5` inside the `<input directory>`.


### Location
The script is available here: [`md5sums_for_data_upload_windows.ps1`](scripts/md5sums_for_data_upload_windows.ps1)


### Usage

1. **Download the script** and place it in the directory that is one level above the data directory containing the files for which you want to compute the md5sums.  
<br>
2. **Navigate to your directory** in PowerShell:
    - Open **Windows PowerShell** by clicking the Start button and typing **PowerShell** into the search bar.
    - Copy the path to your working directory. You can do this, for example, in Windows Explorer where the path will be displayed in the address bar at the top.
    - Use the `cd` command to navigate to the copied path:  
      ```
      cd "<copied path>"
      ```  
      *Note*: If your path contains spaces, enclose it in quotes.  
      <br>

3. **Run the script** to calculate MD5 checksums:  
    ```
    ./md5sums_for_data_upload_windows.ps1 -FolderPath "<input directory>"
    ```  

    For example:
    ```
    ./md5sums_for_data_upload_windows.ps1 -FolderPath "derived"
    ```  

    This will calculate the MD5 checksums for all files in the `derived` directory and save them to `derived/checksums.md5`.
