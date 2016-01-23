#!/bin/bash

rm test.output
touch test.output

while read CUBE1
	do
	while read CUBE2
		do 
		while read CUBE3
			do
				RESULT1=$(expr $CUBE1 + $CUBE2 + $CUBE3)
				echo -e "$CUBE1 + $CUBE2 + $CUBE3 = $RESULT1" >> test.output
                                RESULT2=$(expr $CUBE1 + $CUBE2 - $CUBE3)
				echo -e "$CUBE1 + $CUBE2 - $CUBE3 = $RESULT2" >> test.output
			done <test.input
		done <test.input
	done <test.input
