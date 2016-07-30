# website-backup
Simple customizable Bash script for backing up a website

- [INSTALLATION](#installation)
- [USAGE](#usage)
- [OPTIONS](#options)

# INSTALLATION

Just download the .sh file and give it permissions to execute with:

    chmod +x /path/to/script/website-backup.sh

# USAGE

Open the script and edit the first lines according to your website FTP credentials, change `USERNAME` with your FTP username, `PASSWORD` with the password and `SERVER` with the FTP server without adding ftp:// at the beginning.




# OPTIONS

##1. Complete backup
Call the script without any parameters like:

    sh /path/to/script/website-backup.sh
    
This will produce a backup of the entire selected website with every subfolders in it.


##2. Quick backup
You can execute the script with the -v option at the end like:

    sh /path/to/script/website-backup.sh -v
    
In that way the script will only backup the main folder of the website, skipping the backup of the subfolders.
