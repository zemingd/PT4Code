array = Array.new

while val = gets do
    array.push(val.chomp.split.map(&:to_i))
end

multiple = array[1]
sum = 1

for i in 1..multiple.length do
    if multiple[i] = 0
        sum = 0
        break
    else
        sum = sum * multiple[i-1]
    end
end

if sum > 10 ** 18
    puts(-1)
else
    puts(sum)
end
