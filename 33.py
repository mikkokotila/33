#!/usr/bin/python

sequence = range(1000+1)
list = []
for s in sequence:
	list.append(s*s*s)

result = []

sequence_one = list	
for a in sequence_one:

	sequence_two = list
	for b in sequence_two:

		sequence_three = list
		for c in sequence_three:

			result.append(a+b+c)
			result.append(a+b-c)
			result.append(a-b+c)
			result.append(a-b-c)
print(result)
