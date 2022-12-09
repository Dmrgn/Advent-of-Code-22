input = "vJrwpWtwJgWrhcsFMMfFFhFp
jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL
PmmdzqPrVvPwwTWBwg
wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn
ttgJtRGJQctTZtZT
CrZsJsPPZsGzwwsLwLmpwMDw".split " "

# split into 3s
grouped = []
while input.length > 0
    grouped.push(input.shift() for x in [1..3])

tot = 0

for group in grouped
    common = null
    map = {}
    for rindex, row of group
        for letter in row
            if map[letter] is undefined
                if rindex is "0"
                    map[letter] = [true, false, false]
            else 
                map[letter][rindex] = true
            if map[letter]?.every((x)-> x is true)
                common = letter
                break
    score = common.charCodeAt(0)
    if 96 < score and score < 123
        score -= 96
    else
        score -= 64
        score += 26
    tot += score

console.log tot