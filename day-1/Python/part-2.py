import re 

#Starts an initial sum 
t = 0

#Defines the list of numbers 
nums = "one two three four five six seven eight nine".split()

#Defines regex pattern
pattern = "(?=("+"|".join(nums) + "|\\d))"

#Apply the pattern to the line 
def findNum(x):
    #Check if x is a string 
    if x in nums:
        return str(nums.index(x)+1)
    
    #Otherwise x is an int 
    return x

for x in open ("/Users/wdaugherty/devStuff/AdventOfCode-2023/day-1/input.txt", "r"):
    #Map the function to each row 
    digits = [*map(findNum, re.findall(pattern, x))]
    t += int(digits[0] + digits[-1])

print(t)