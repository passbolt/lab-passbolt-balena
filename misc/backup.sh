#!/bin/sh

DATE=$(date "+%Y%m%d%H%M%S")

# Dump database
mysqldump -h db -u ${MYSQL_USER} -p${MYSQL_PASSWORD} ${MYSQL_DATABASE} | gzip > /data/${DATE}-passbolt.sql.gz

# Backup GPG and JWT keys
tar czf /data/${DATE}-etc-passbolt.tar.gz -C / etc/passbolt

# Delete files older than 16 days
find /data -name "*gz" -mtime +16 -delete

# Add here your rclone command to save your backups
# Have a look at https://rclone.org/#providers