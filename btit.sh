#!/bin/bash

secondCounter=0

while true
do
  while [ $secondCounter -lt 60 ]
  do

    status=$(hcitool con)

    if ! [[ $status == *">"* ]]; then
      ((secondCounter++))
    else
      secondCounter=0
    fi

    sleep 1

  done

  rfkill block bluetooth

  secondCounter=0

done
