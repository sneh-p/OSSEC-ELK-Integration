echo "Install wget, gcc"
echo
echo
sudo yum -y install wget
sudo yum -y install gcc
yum -y install openssl-devel
echo 
echo 


echo "**********************************************************************************"
echo "Download the install script"
echo
echo
sudo wget -U ossec https://bintray.com/artifact/download/ossec/ossec-hids/ossec-hids-2.8.3.tar.gz
echo   
echo


echo "**********************************************************************************"
echo "Extract the package"
echo 
echo
sudo tar -zxvf ossec-hids-*.tar.gz
cd ossec-hids-*
echo
echo


echo "**********************************************************************************"
echo "Running the script"
echo
echo
sudo ./install.sh
echo
echo


echo "**********************************************************************************"
echo "Starting the ossec service"
echo
echo
sudo /var/ossec/bin/ossec-control start
echo
echo

