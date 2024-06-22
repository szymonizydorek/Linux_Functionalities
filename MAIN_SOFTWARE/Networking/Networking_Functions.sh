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
