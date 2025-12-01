@echo off
 
:: Set folder name

set "folderName=MyFolder"
 
:: Create folder

mkdir "%folderName%"
 
:: Create two text files inside the folder

echo This is file 1 > "%folderName%\file1.txt"

echo This is file 2 > "%folderName%\file2.txt"
 
echo Folder and files created successfully!