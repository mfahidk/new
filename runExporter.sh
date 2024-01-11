EXPORTER_DIR=`pwd`
if [ -f $EXPORTER_DIR/exporter.pid ]
   then
     EXPORTERID=`cat $EXPORTER_DIR/exporter.pid`
     NUM=`ps -ef | grep -i "$EXPORTERID" | grep -i "export" | wc -l`
     if [ $NUM -ge 1 ]
        then
         echo "exporter is already running"
         exit
     fi
fi
echo $$ > exporter.pid
while :
do
java -cp ical.jar:lib/commons-logging.jar:lib/javaee.jar:lib/postgresql.jar:lib/activemq-core-5.0.0.jar org.icalibrator.replication.exp.ExportMessages
sleep 120
done
