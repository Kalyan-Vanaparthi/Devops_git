#!/bin/bash
echo -e "welcome to the Atm \nplease Insert  card \nFetinching Deatails Please wait sometime\nPlease choose the Type of transaction as Below by their Number"
Balance=10000
Pin=6363
echo $Balance
echo -e "1. Withdrawal\n2. Deposite\n3. Balance enqiry\n4. Mini Statement\n5. Pin Change"
read Choice

if [ $Choice -eq 1 ]
then
	echo "Please Enter Pin"
	read EPin
	if [ $EPin -eq $Pin ];then

		echo -e "Fetching account Details\nName:kalyan\nAccNo:123456789\nBalance:$Balance\nPlease Enter Amount: "
		read Amount
		if [ $Amount -le $Balance ]
		then
			Balance=$(($Balance - $Amount))
			echo -e "Withdrawal Seccessfully Completed\nYour Current Balace is : $Balance\nCollect the cash Visit Again Mr.Kalyan"
		else
			echo "Insufficient balance"
		fi
	else
		echo "Incorrect Pin"
	fi
fi

if [ $Choice -eq 2 ];then
	read -p "Enter the Diposite amount" dep_Amount
	Balance=$((Balance + dep_Amount))
	echo -e "Please Insert the Amount\nCalculating Amount.........\nYour account Balance Is : $Balance\n Transaction Succesfully Done Visit Again"

fi

if [ $Choice -eq 3 ];then
	read -p "Please Enter Pin" EPin
	if [ $EPin -eq $Pin ];then
		echo "your Account Balance is $Balance"
	else
		echo "Invalid Pin"
	fi
fi

if [ $Choice -eq 4 ];then
	echo "Technical Error At Our Side Please Try After Sometime"
fi

if [ $Choice -eq 5 ];then
	read -p "Please Enter Old Pin" Epin
	if [ $Epin -eq $Pin ];then
		read -p "Enter New Pin" Npin
		Pin=$Npin
		echo "pin changed"
	else
		echo " wrong pin "

	fi
fi














