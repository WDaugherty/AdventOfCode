#Defines the sum 
t= 0

for i,x in enumerate(open ("/Users/wdaugherty/devStuff/AdventOfCode/src/2023/day-2/input.txt", "r")):
    groups = x.strip().split(": ")[1].split("; ")
    total_cubes =  {"red": 0, "green":0, "blue":0}

    for part in groups:
        colour_map = {"red": 0, "green":0, "blue":0}
       
        for e in part.split(", "):
            a,b = e.split()
            colour_map[b] = int(a)

        for key in total_cubes:
            total_cubes[key] = max(total_cubes[key], colour_map[key])

    else:
        t += total_cubes['red'] * total_cubes['green'] * total_cubes['blue'] 

print(t)
