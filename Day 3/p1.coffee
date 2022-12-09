input = "".split " "

tot = 0

for x in input
    f = x.slice(0, x.length/2)
    s = x.slice(x.length/2, x.length)
    map = {}
    for y in f
        if map[y] is undefined then map[y] = true
    common = null
    for y in s
        if map[y] then common = y
    score = common.charCodeAt(0)
    if 96 < score and score < 123
        score -= 96
    else
        score -= 64
        score += 26
    tot += score

console.log tot
