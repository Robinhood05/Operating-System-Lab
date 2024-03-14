#!/bin/bash

read -p "Enter the student's score: " score

# Convert score to integer (remove any decimal places)
score=${score%.*}
case $score in
    10)
        echo "Student grade: A+"
        ;;
    9)
        echo "Student grade: A"
        ;;
    8)
        echo "Student grade: B"
        ;;
    7)
        echo "Student grade: C"
        ;;
    6)
        echo "Student grade: D"
        ;;
    *)
        echo "Student grade: F"
        ;;
esac
