#!/bin/bash -l

# chmod 777 extract.sh before running the script

# constants
DIR=../extracted
CHARLIED_SECTOR=1052672
BACKUP_SECTOR=2048
CHARLIED_IMG=../charlied_disk.img
BACKUP_IMG=../backup_disk.img

# arrays with filenames and inodes of both disks
charlied_filenames=(backup.sh obfuscator1 obfuscator2 seeds.txt bash_history crontabs_charlied syslog chapman13.10-16.log auth.log places.sqlite global-messages-db.sqlite passwd- shadow- history.log config kern.log recently-used logins.json timezone obfuscator.trashinfo)
charlied_inodes=(423847 557134 264702 557188 395585 567365 262544 404770 262845 552464 419525 263661 263698 566563 397765 262662 420010 419611 262384 420229)

backup_filenames=(backup_1634414401.zip backup_1634412601.zip backup_1634405485.zip)
backup_inodes=(168650 168646 168635)

filenames=(${charlied_filenames[@]} ${backup_filenames[@]})
inodes=(${charlied_inodes[@]} ${backup_inodes[@]})

# function to extract files 
# arguments: $1: i, $2: i + numfiles, $3: img, $4: sector, $5: directory
function extract() {
    echo "------- Extract files from '$3' -------"
    i=$1
    while [ $i -lt $2 ];
    do
        icat -o $4 $3 ${inodes[$i]} > $5/${filenames[$i]}
        filepath=$(ffind -o $4 $3 -au ${inodes[$i]})
        echo "  > Extracting '${filenames[$i]}' from:"
        echo "$filepath"
        echo 
        i=$[$i+1]
    done
}

function computemd5() {
    echo "------- Compute MD5 Values -------"
    for file in $DIR/disk_files/* $DIR/backups/* $DIR/shared_files/*;
    do
        echo $(md5sum $file)
    done
}

# create new directory
echo ------- Create directory /$DIR -------
mkdir -p $DIR
mkdir -p $DIR/disk_files
mkdir -p $DIR/backups

# setting up function arguments
charlied_numfiles=${#charlied_inodes[@]}
backup_numfiles=$[${#backup_inodes[@]}+$charlied_numfiles]

# call function to extract (files from charlied disk and zip files from backup disk)
extract 0 $charlied_numfiles $CHARLIED_IMG $CHARLIED_SECTOR $DIR/disk_files
extract $charlied_numfiles $backup_numfiles $BACKUP_IMG $BACKUP_SECTOR $DIR/backups

# call function to compute md5 values
computemd5