#!/bin/bash

# Path to the .NET 6 app DLL
dotnet_app_path="/home/chaithanya/Documents/DotnetFromBash/linux-x64/CallDotnetFromBash.dll"  # Update this to the actual path of your .NET DLL in linux vm

# Directory to search for .txt files
directory_to_search="/home/chaithanya/Documents/DotnetFromBash/Bash"  # Update this to the directory where you want to search in linux vm

# Recursively search for .txt files and process each one
find "$directory_to_search" -type f -name "*.txt" | while read txt_file; do
    echo "Found text file: $txt_file"
    
    # Call the .NET app with the .txt file as an argument
    dotnet "$dotnet_app_path" "$txt_file"
done
