#!/bin/bash
source Networking_Functions.sh 

function Function_MENU_Networking() {
    read -p  "Provide your choice: " Choice_1

    if [ "$Choice_1" = 1 ];then
      Function_Ping1

    elif [ "$Choice_1" = 2 ];then
      Function_tcpdump2

    elif [ "$Choice_1" = 3 ];then
      Function_IPInfo3

    else
      echo "This option is not supported"
   fi
}

