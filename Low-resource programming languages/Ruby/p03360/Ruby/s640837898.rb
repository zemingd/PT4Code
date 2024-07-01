num = []
num = gets.split.map(&:to_i)
k = gets.to_i

max = num[0]
for i in 0..2 do
    if num[i] > max
        max = num[i]
        index = i
    end
end

for i in 0...k do
    max *= 2
end
num[index] = max

sum = 0
for i in 0..2 do
    sum += num[i]
end

p sum
