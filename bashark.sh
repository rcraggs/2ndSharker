#!/bin/bash

echo "Welcome to 2nd Sharker"
echo

total=0

while true; do

    read -rsn1 input

    case $input in
      c)
        echo "Starting Again"
        echo
        total=0
        ;;
      .)
        echo "Adding 0.5"
        total=`echo $total + 0.5 | bc`
        ;;
      [1-9])
        echo "Adding $input"
        total=`echo $total + $input | bc`
        ;;
      p)
        echo "Total = " $total
        ;;
      x)
        exit
        ;;
    esac
done

