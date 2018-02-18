#!/bin/bash
res=`sudo python ictflogin.py`
i=0
for word in $res
do 
	if [ $i -eq 0 ]
	then
		ip=$word;
	else
	  	port=$word;
	fi
	i=1;
done
chmod 400 ctf_key
ssh -i ctf_key -p $port ctf@$ip
