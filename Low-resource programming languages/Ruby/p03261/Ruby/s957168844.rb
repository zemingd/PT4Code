require 'scanf'
words = []
result1 = 1
result2 = 1
num = scanf("%d")

for i in 1..num[0] do
    words.push(gets)
end

for i in 0...words.length-1 do
    if words[i][words[i].length-2] != words[i+1][0]
        result1 = 0
    end
end

if words != words.uniq
    result2 = 0
end

if result1 == 1 && result2 == 1
    p "Yes"
else
    p "No"
end
