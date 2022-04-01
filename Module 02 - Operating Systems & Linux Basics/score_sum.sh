#!/bin/bash

echo "all params: $*"
echo "number of params: $#"

# Declare function
score_sum () {
  sum=0
  while true
    do
    read -p "enter a score: " score
    if [ "$score" = "q" ]; then
      break
    fi
    sum=$(( $sum + $score ))
    done
  echo "total score: $sum"
}

score_sum