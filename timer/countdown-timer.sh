#!/bin/bash

# Usage
[[ $# -ne 1 ]] && echo "Usage: ./coundown SECONDS" && exit 1

# Input value check
timer=$1
[[ ! $timer =~ ^[+-]?[0-9]+$ ]] && echo "Please enter a valid integer." && exit 1
[[ ! $timer -ge 1 ]] && echo "Please enter a value greater than 1." && exit 1

# Start countdown timer 
while [ $timer -ge 1 ]
do
  printf "\rCountdown: %2d second(s)" ${timer}
  sleep 1
  timer=$(( $timer - 1 ))
done

# Show times up message
printf "\rCountdown: %2d second(s)" ${timer}
printf "\nTimes Up!\n"

exit 0
