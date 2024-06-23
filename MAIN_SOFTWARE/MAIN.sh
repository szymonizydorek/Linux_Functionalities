#!/bin/bash

echo "Current directory: $(pwd)"  # Debug statement to check current directory
ls -l Networking/

source Networking/Networking_Functions.sh 
source Networking/Functions_Selector.sh 

function  Hello {
    echo -e "*This is done by function Hello* \n Selected option Menu is: $Choice_1 \n"
}

while_loop_choice=""

while [[ $while_loop_choice != "y" ]]; do
    echo "Welcome to 'Great Script Aggregator' "
    printf "\n"
    sleep 0.5 
    echo -e "Options:\n 1. Networking Functionalities \n 2. API Testing \n 3. Security Testing \n"
    read -p  "Provide your choice: " Choice_1
    printf "\n"

    if [ "$Choice_1" = 1 ];then
      Function_MENU_Networking

    elif [ "$Choice_1" = 2 ];then
      Function_tcpdump2

    elif [ "$Choice_1" = 3 ];then
      Function_IPInfo3

    else
      echo "This option is not supported"
   fi
done
