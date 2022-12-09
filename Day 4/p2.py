input = [[[int(z) for z in y.split("-")] for y in x.split(",")] for x in """2-4,6-8
2-3,4-5
5-7,7-9
2-8,3-7
6-6,4-6
2-6,4-8""".split("\n")]

def overlap(x, y):
    return (
        (y[0] <= x[0] and x[0] <= y[1]) or
        (y[0] <= x[1] and x[1] <= y[1])
    )

tot = 0

for row in input:
    if overlap(row[0], row[1]) or overlap(row[1], row[0]):
        tot+=1

print(tot)
