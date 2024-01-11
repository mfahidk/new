#!/bin/bash
DATE=`date +%d%b%y`
cd /home/admin/ExportSetup
/home/admin/ExportSetup/runDbSynchronizer.sh 2> /home/admin/ExportSetup/"$DATE"_db_sync.out
cat /home/admin/ExportSetup/"$DATE"_db_sync.out | mailx -s "$DATE Glsaloon Database Synchronizer Details " -c "sharilalipv@gmail.com" sysadmins@posibolt.com vasifvahab1992@gmail.com
rm /home/admin/ExportSetup/"$DATE"_db_sync.out
