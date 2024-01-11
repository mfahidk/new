echo $$ > exporter.pid
while :
do
java -cp ical.jar:lib/commons-logging.jar:lib/javaee.jar:lib/postgresql.jar:lib/activemq-core-5.0.0.jar:reference/Adempiere.jar:lib/adempiereRoot.jar:reference/jboss-common.jar:reference/CCTools.jar org.icalibrator.replication.imp.StandAloneImport
sleep 120
done
 
