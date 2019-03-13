# bash shell
user=$1;
pass=$2;
compname=$3;
stoptime=$4;
resultname=$5;
vusers=$6;

echo "The order of parameteris username/password/compositionpath/stoptimeinmins/resultname/NumberofVirtualusers"

echo "The comp that is started is $compname";
{binPATHscommand}/scommand  play url=http://{instanceURL}/concerto username=$user password=$pass name=$compname customproperty="Band1/Track1/track1VuCount=$vusers" resultname=$resultname validation=Homepage/AverageResponseTime/100 file="consolefile.txt"

instanceid=`cut -d , -f2 consolefile.txt | cut -d \' -f2 | cut -d T -f1 | tr -s "\n"`
STRLENGTH=`echo -n $instanceid | wc -m`;
#echo "Length of instanceid captured:$STRLENGTH";
ref=0;
if [ "$STRLENGTH" -gt "$ref" ];
then
echo "test started with instance id $instanceid"
stoptime=$stoptime"m";
echo "it will run for $stoptime";
sleep $stoptime ;

{binPATHscommand}/scommand  stop url=http://{instanceURL}/concerto username=$user password=$pass instanceid=$instanceid ;
exit
#echo "Test ran successfully" | mail -s "a subject" somename@somewhere.com

fi
#echo "Test aborted or failed" | mail -s "a subject" somename@somewhere.com
echo "Due to failure comp might have aborted"
echo " Double check if comp is stopped from GUI "
