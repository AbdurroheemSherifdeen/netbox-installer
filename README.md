Instruction on running the script

1. Clone the git repository locally

git clone https://github.com.abdur

2. change directory to the repository folder in you local environment

cd netbox-installer

3. Run the installer include your ip address and the database name of your choice

./netbox-installer.sh <ip address> <database name>

4. A configuration file will open. Edit the following
	Allow Host = ['ip address or hostname']
	DATABASE = { 
			Name = 'your data base name'
			User = 'your database user'
			Password = 'password'
		   }
	SECRET_KEY = ''
Generate a randome secret key of about 50 characters and paste it here

5. Save and Exit the script

Ctrl X, Y and Enter

6. Wait for the installer to finish

7. Your netbox installation is successfull

8. Lets get netbox to auto start and keep running

9. Change the ip address in the autostart-netbox.sh
	
10. Copy the autostart-netbox script to systemd/system
	=> sudo cp autostart-netbox.service /etc/systemd/system

11. Enable and the service

sudo systemctl enable autostart-netbox.service
sudo systemctl start autostart-netbox.service

copy the ip address and open it in your browser
