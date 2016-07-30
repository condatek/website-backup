# website-backup
Simple customizable Bash script for backing up a website

- [INSTALLATION](#installation)
- [USAGE](#usage)

# INSTALLATION

Just download the .sh file and give it permissions to execute with:
  chmod +x /path/to/script/website-backup.sh

# USAGE

<h3>Simple usage</h3>
Call the script using:

  sh /path/to/script/website-backup.sh

<h3>Script options</h3>
Using the script without parameters will backup the entire website with every subfolder in it

  <h4>Quick backup mode</h4>
  You can execute the script with the -v option at the end like:
  
    sh /path/to/script/website-backup.sh -v
  
  In that way the script will only backup the main folder of the website, skipping the backup of the subfolders.
