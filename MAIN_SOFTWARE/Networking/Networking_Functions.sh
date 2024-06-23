#!/bin/bash/
echo "hello from Networking"

function Function_Ping1() {
  echo -e "This is day 1 of Bash Challenge \n Provide website address: "
  read website
  OUTPUT=$(ping -c 3 $website | grep loss)
  echo $OUTPUT
}

function Function_tcpdum2(){

  VERSION=$(sudo command tcpdump --version | awk 'NR==2 {print $3}')
  if [[ $VERSION != 0 ]]; then
    echo 'TCPDUMP is installed'
  else
    echo 'TCPDUMP is not installed'
  fi

  if [[ $VERSION != 0 ]]; then
    echo 'TCPDUMP is installed'
  else
    echo 'TCPDUMP is not installed'
  fi
  
  echo "AVAILABLE INTERFACES: "
  printf "\n"
  ifconfig | grep -i UP | awk '{print $1}' | sed 's/:/ /g' | grep '^en'
  read -p "ENTER INTERFACE NAME: " INTERFACE
  
  echo "STARTING PACKET CAPTURE ON INTERFACE: $INTERFACE"
  echo "OUTPUT FILE IS SAVED TO: /tmp/file2.txt"
  sudo tcpdump -i $INTERFACE -c 10 > /tmp/file2.txt
  echo "DONE"
}

function Function_IPInfo3() {

  IPv4=$(ifconfig | grep -A 5 en0 | awk 'NR==5 {print $2}')
  IPv6=$(ifconfig | grep -A 5 en0 | awk 'NR==6 {print $2}')
  BROADCAST=$(ifconfig | grep -A 5 en0 | awk 'NR==5 {print $2}')
  echo "IPv4 ADDRESS:" $IPv4
  echo "IPv6 ADDRESS:" $IPv6
  echo "BROADCAST ADDRESS:" $BROADCAST
}

function Function_MENU_Networking() {
    read -p  "Hello from Menu. Which option: " Choice_1

    if [ "$Choice_1" = 1 ];then
      Function_Ping1

    elif [ "$Choice_1" = 2 ];then3
      Function_tcpdump2

    elif [ "$Choice_1" = 3 ];then
      Function_IPInfo3

    else
      echo "This option is not supported"
   fi
}
