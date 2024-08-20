echo -e "THIS FILE IS FOR INMSTALLING JENKINN PLEASE ENTER YES IF YOU WANY TO CONTINUE\n"
read yes

if [ $yes == "yes" ];then

	sudo apt update -y
	echo "INSTALLING JAVA JDK TO RUN JENKINS"
	
	#sudo apt install openjdk-11-jdk -y
	echo "ADDING THE JENKINS Debian repository...."
	wget -q -0 -
	https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
	sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
	echo "UPDATING SYSTEM AFTER ADDING JENKINS REPOSITORY"
	sudo apt update -y

	echo "INSTALLING JENKINS START'S....."
	sudo apt install jenkins -y

	echo " STARTING JENKINS  SERVICE"
	sudo systemctl start jenkins
	echo "ENABLE JENKINS  TO START AT BOOT"
	sudo  systemctl enable jenkins
	echo "printing  jenkins initial admin password"
	sudo cat /var/lib/jenkins/secrets/initialAdmiPassword

fi
