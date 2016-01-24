## the unsolved problem of 33

I'm intersted in this problem because: 

- Nobody has been able to solve it 
- It seeems like a very hard problem 
- I learn about managing complexity
- I learn mathematical computing

Before anything else, please note that this is a "kit" for learning about numbers, complexity and computer-aided research. I do think the problem can be solved by applying a relatively simplistic method. None of this intented for serious mathematical computing, but learning. 

You can find three scripts that both do a similar thing: 

1) 33.sh (bash)

2) 33.py (python)

3) 33.cpp (c++)

The Python one is more comprehensive in its capability, and at least 1,000x faster. I think Python comes with significantly less overhead for math operations and more importantly, it allows storing values easily in a memory rather than accessing a file again and again. 

To get the background for the problem, watch this short video first: 

https://www.youtube.com/watch?v=wymmCdLdPvM

I'm also interested in the option that 33 should not be on the list of numbers that can be a sumof three cubes. And how to prove it. 

### for total beginners, start with 33.sh

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

### complexity involved in the computations 

Let's say we want to scan every option for cubes of the first 100 whole numbers. 1,2,3,4,5,6..3434,3435...and so forth. It means we have to deal with 100 x 100 x 100 = 1,000,000 possible combinations. Because we have to factor the possible +/-  variations, maybe we have to 10-fold that. 10 million calculations...that's easy with the script we have here. 

Let's say we want to do the same for the first 10,000. Then we have complexity of 10000 x 10000 x 10000 = 1,000,000,000,000. A trillion computations is already a problem for a lot of people. Even then, we're just covering the first 10000 cubes. As the video suggest, this problem has been explored to 1 and 14 zeros, which makes the complexity: 

100,000,000,000,000 x 100,000,000,000,000 x 100,000,000,000,000 = 1E42

I have no idea how big that number is. On one hand the problem is very simple, but on one hand very complex. 



