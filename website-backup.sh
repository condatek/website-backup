#!/bin/bash

#############################################################
# Piccolissimo script flessibile per backup server ftp
# Oliver Lee Chachou
# Mag 2016
#############################################################
# Copyright (C) 2016 Oliver Lee Chachou
#
# This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published
#  by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
#  See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with this program. If not, see http://www.gnu.org/licenses/.
###########################################################################################################################

# FTP Connection credentials
USERNAME="" # Put your FTP Username here
PASSWORD="" # FTP Password goes here
SERVER="" # The server you want to connect to, don't put ftp://
#HOST="ftp://5.39.49.129" #NOT USED
#PORT="21" #NOT USED

# Destination folder
dest="" # No end backslash

# Other variables
giorno=$(date +%F)
file_archivio="backup-$giorno.tar.gz"

# Initial Message
date
echo
echo "Preparing $SERVER backup on $dest/$file_archivio"
echo

# Check for the temp directory
if [ -d $dest/temp ] 
then
  echo "Directory already exists, I'm wiping files inside"
  rm -R $dest/temp/*
  echo
else
  echo "I'm creating the temp directory"
  mkdir $dest/temp
  echo
fi

######################################################################################### CONTROLLO PASSAGGIO PARAMETRI #####
echo "verbose=$verbose, output_file='$output_file', Leftovers: $@"
###################################################################################### #####                     ############

echo "Starting Backup..."
echo

cd $dest/temp
if [ $1 = "-v" ]; then
  echo "Quick mode, only backing up root directory"
  wget -nH -nd ftp://$USERNAME:$PASSWORD@$SERVER/*
else
  echo "Normal mode, backing up root directory and subfolders as well"
  wget -r -nH -x ftp://$USERNAME:$PASSWORD@$SERVER/*
fi
cd $dest
tar -czf $file_archivio temp #<<daje
#daje
#mv $dest/temp/$file_archivio ../
echo "Everything done, you can find your backup in $dest !"

# ToDo - check for errors
#  Check if connection is ok else echo an error message
#  Ask for the name of website so we can rename final packet in something like backup-$SITENAME-$giorno.tar.gz
#  Other things I cannot remember now
