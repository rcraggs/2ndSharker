#!/bin/bash

echo "Welcome to 2nd Sharker"

total=0

while true; do

    read -rsn1 input
    if [ "$input" = "a" ]; then 
        echo "hello world"           
    fi

    case $input in
      c)
        echo "Starting Again"
        total=0
        ;;
      .)
        total=`echo $total + 0.5 | bc`
        ;;
      [1-9])
        echo "Adding $input"
        total=`echo $total + $input | bc`
        ;;
      p)
        echo "Total = " $total
        ;;
    esac
done

