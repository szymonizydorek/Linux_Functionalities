#!/bin/bash

source Networking/Networking_Functions.sh 

function  Hello {
    echo -e "*This is done by function Hello* \n Selected option Menu is: $Choice_1 \n"
}

while_loop_choice=""

while [[ $while_loop_choice != "y" ]]; do
    echo "Welcome to 'Great Script Aggregator' "
    sleep 0.5 
    echo -e "Options:\n 1. NETWORKING"
    read -p  "Provide your choice: " Choice_1

    if [ "$Choice_1" = 1 ];then
      Function_Ping1

    elif [ "$Choice_1" = 2 ];then
      Function_tcpdump2

    else
      echo "This option is not supported"
   fi
done
