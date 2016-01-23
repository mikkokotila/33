#!/bin/bash

rm 33.output
touch 33.output

while read CUBE1
	do
	while read CUBE2
		do 
		while read CUBE3
			do
				RESULT1=$(expr $CUBE1 + $CUBE2 + $CUBE3)
				echo $RESULT1 >> 33.output			
			done <test.input
			RESULT2=$(expr $CUBE1 + $CUBE2 + $CUBE3)
			echo $RESULT2 >> 33.output
	done <33.input
done <33.input
