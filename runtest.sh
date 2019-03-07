# bash shell
echo "Enterusername:"
read user
echo "Enter password"
read pass
echo "Enter Full composition path:"
read compname;
echo "Enter time in minutes for test to run , enter only number"
read stoptime;
echo "Enter result name:"
read resultname

echo "The comp that is started is $compname";
{binPATHscommand}/scommand  play url=http://{instanceURL}/concerto username=$user password=$pass name=$compname resultname=$resultname validation=Homepage/AverageResponseTime/100 file="consolefile.txt"

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
fi
echo "Due to failure comp might have aborted"
echo " Double check if comp is stopped from GUI "
