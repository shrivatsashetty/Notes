for each_cmd in date uptime"free -m"
do
	echo "The $each_cmd output on server:$each_ser"
	sshpass -f pass ssh -o StrictHostKeyCheking=NO ssh amith
