## the unsolved problem of 33

To get the background for the problem, watch 
this short video first: 

https://www.youtube.com/watch?v=wymmCdLdPvM

I'm intersted in this problem because: 

- Nobody has been able to solve it 
- It seeems like a very hard problem 
- I learn about managing complexity
- I learn mathematical computing

I'm also interested in the option that 33 should 
not be on the list of numbers that can be a sum 
of three cubes. And how to prove it. 

### 33.sh

To run the script, you need to have the input file 
where you have the cubes you want to check against. 

INPUT FILE: 33.input

You will also end up with an output file, where you
can find the results. 

OUTPUT FILE: 33.output

### once you are running the script 

For monitoring (learning!) here are two commands you can run on separate windows. The first one will keep showing the last top20 results. I found this quite useful initially to learn how the changes take place in the rankings. 

while :; do echo -e "---start---"; LC_ALL=C cat test.output | sed '1d' | cut -d '=' -f2 | sed 's/[[:blank:]]//g' | sort | uniq -c | sort -nr | head -20; done

I also run one more screen, with: 

$ while :; do cat test.output | tail -1; done

That way I can see the last calculation always. 

NOTE: these are just for testing, as they should notably make the main script slower. 
