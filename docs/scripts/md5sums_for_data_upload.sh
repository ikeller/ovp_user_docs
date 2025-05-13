#!/bin/bash

# Calculate md5sum hashes of all files in a directory tree
# Two options of saving the hashes are available: per file and per directory.
#  

#   -h  shows help text
#   arg1 - directory path to the data to be uploaded to LeoMed
#   arg2  - specifies how the hashes are save. Two options are possible:
#         1. --per_folder - saves all md5sums in one file <checksums.md5>
#         2. --per_file - saves md5sum for each file separatly with .md5 extension 

# Usage:
    # ******* Please copy this script to the location one level up to your data directory*****

    # Example:

        # ./md5sums_for_data_upload.sh 

        # ./my_experimental_data/
        # ./my_experimental_data/file1.txt
        # ./my_experimental_data/file1.png
        # ./my_experimental_data/raw_data/file1.txt

    # Run    
        #    md5sums_for_data_upload.sh ./my_experimental_data/ --per_folder
        #    md5sums_for_data_upload.sh ./my_experimental_data/ --per_file

function usage {
    echo "USAGE: $(basename $0) input_dir --per_folder/per_file"
    exit 1
}

if [[ $# -lt 2 ]]; then
    usage
fi



if [ "$1" == "-h" ]; then
  echo " 

    Calculate md5sum hashes of all files in a directory tree

      -h  shows this help text
      arg1 - directory path to the data to be uploaded to LeoMed
      arg2  - specifies how the hashes are save. Two options are possible:
            1. --per_folder - saves all md5sums in one file <checksums.md5>
            2. --per_file - saves md5sum for each file separatly with .md5 extension 

    Usage:  

    ******* Please copy this script to the location one level up to your data directory *****

    Example:

        ./md5sums_for_data_upload.sh 
        ./my_experimental_data/
        ./my_experimental_data/file1.txt
        ./my_experimental_data/file1.png
        ./my_experimental_data/raw_data/file1.txt

    Run    
        $ md5sums_for_data_upload.sh ./my_experimental_data/ --per_folder
        $ md5sums_for_data_upload.sh ./my_experimental_data/ --per_file

   "
  exit 0
fi

# remove last slash from the path
DIR="${1%/}"

if [ "$2" == "--per_folder" ]; then
    # 1. Run the md5sum command on every file in that list
    # 2. Create a string that contains the list of file paths along with their hashes

    if [[ $OSTYPE == 'darwin'* ]]; then
        find $DIR -type f ! -iname ".DS_Store" -exec md5 -r {} + | LC_ALL=C sort > $DIR/checksums.md5
        
    else
        find $DIR -type f ! -iname ".DS_Store" -exec md5sum {} + | LC_ALL=C sort > $DIR/checksums.md5
    fi

    echo "The md5sum hashes are saved to ${DIR}/checksums.md5"


    exit 0
fi

if [ "$2" == "--per_file" ]; then
    # 1. Loops through each file in a directory (including sub-directories)
    # 2. Calculates md5 sum and saves it to file.md5 in the same location

    for f in $(find "$DIR" -type f ! -iname ".DS_Store")
        do
            echo "Calculating md5sum for $f file..."
            if [[ $OSTYPE == 'darwin'* ]]; then
                md5 -r $f > $f.md5
            else
                md5sum $f > $f.md5
            fi        
        done

    exit 0
fi