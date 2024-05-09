#Defines the sum 
t= 0


for i,x in enumerate(open ("/Users/wdaugherty/devStuff/AdventOfCode/src/2023/day-2/input.txt", "r")):
    groups = x.strip().split(": ")[1].split("; ")
    

    for part in groups:
        colour_map = {"red": 0, "green":0, "blue":0}
       
        for e in part.split(", "):
            a,b = e.split()
            colour_map[b] = int(a)

        if colour_map["red"] > 12 or colour_map["green"] > 13 or colour_map["blue"] > 14:
            break 

    else:
        t += i + 1

print(t)
