a="weekday"
b="weekEnd"
pwd

for i in 1 2 3 4 5 6 7
do
	if [ $i -eq 6 ];then
		
		echo "$i : $b Saturday"
	elif  [ $i -eq 7 ];then
		echo "$i : $b Sunday"
	elif [ $i -eq 1 ];then
		echo "$i : $a Monday"
	elif [ $i -eq 2 ];then
		echo "$i : $a Tuesday"
	elif [ $i -eq 3 ];then
		echo "$i : $a Wednesday"
	elif [ $i -eq 4 ];then
		echo "$i : $a Thursday"
	else
		echo "$i : $a Friday"
	fi
done
			
