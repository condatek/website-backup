# website-backup
Simple customizable Bash script for backing up a website
This is just my first attempt to learn some Bash and to do something usefull with it. And I also was trying to learn how to pass arguments to a script.

- [INSTALLATION](#installation)
- [USAGE](#usage)
- [OPTIONS](#options)
- [TODO](#todo)

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

# TODO
- [x] Check if temp directory already exists
- [ ] Check if temp directory is not empty
- [ ] Check if connection is ok else echo an error message
- [ ] Ask for the name of website so we can rename final packet in something like backup-$SITENAME-$giorno.tar.gz
- [ ] Other things I cannot remember now
