# bash shell
user=$1;
pass=$2;
days=$3;


/{scommandbinPath}/scommand cmd=delete type=result maxage=$days username=$user password=$pass url=http://{URL}/concerto

echo " deleted results older than $days days "
