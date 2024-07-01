h = gets.to_i
num = 0

while h > 1
    h /= 2
    num += 1
end

n = 1
sum = 0

(num+1).times do
    sum += n
    n *= 2
end

puts sum