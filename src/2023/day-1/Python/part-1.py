#Read in the data
with open ("/Users/wdaugherty/devStuff/AdventOfCode-2023/day-1/input.txt", "r") as f:
    data = f.readlines()


#Finds and records the digits in each string
def findDigits(data):
    for i in data:
        if i.isdigit():
            return i

#Finds the sum of the digits
result = 0 
for j in data:
    first = findDigits(j)
    last = findDigits(j[::-1])
    result += int(str(first) + str(last))

#Prints the results
print(result)