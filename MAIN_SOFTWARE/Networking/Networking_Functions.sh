#!/bin/bash/
echo "hello from Networking"

function 1_Ping() {
  echo -e "This is day 1 of Bash Challenge \n Provide website address: "
  read website
  ping -c 3 $website | grep loss
}
