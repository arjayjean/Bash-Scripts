#!/bin/bash

yellow='\033[1;33m'
red='\033[0;31m'
end='\033[0m'

clear

# Placeholder for the countdown. 
# Will count how many failed attempts were made when trying to log in
count=0

# The loop that a user will be in while they are trying to log in
# If the user enters the password correctly, the loop will end, immediately
# However, if the user enters the password incorrectly, they will have to attempt it again, until it is successful
# If unsuccessful up to 3 times, the loop will end and there will be no more attempts.
while [ $count != 3 ] 
do	
	echo "Please enter your password:"

    # A variable that will hold the password that a user will input
    # The "read" command will read the input the user enters in
    # The "-s" option for the "read" command will hide the input that is getting entered 
	read -s password

    # Conditional that will check if the password is correct or not
	if [[ $password != "Arjay" ]]; then
		clear
        # When the password is entered incorrectly, the "count" will be added by 1
		count=$(( $count + 1 ))

		echo "($count/3) Incorrect! Please enter the correct password!"			
		
        # Another conditional for when the password is entered incorrectly 3 times
		if [[ $count == 3 ]]; then
			clear
			echo -e "${red}You are restricted from logging in. Please try again later!${yellow}\n"
		fi
    
    # If the user enters the correct input, These are the outputs that will display
    # Ending with the opening of a text file
	else
		clear
		echo -e "${yellow}You have successfully logged in!${end}"
		echo -e "\n${red}HERE IS THE SECRET DOCUMENT!!!${end}\n"		
		echo -ne '5%   |#\r'		
		sleep 1
		echo -ne '11%  |##\r'
		sleep 1
		echo -ne '33%  |######\r'
		sleep 0.5
		echo -ne '66%  |#############\r'
		sleep 0.5
		echo -ne '100% |#######################\r'
		sleep 2
		echo -ne '\r'
		cat secrets.txt
		echo -e '\n'
		exit
	fi
		
done