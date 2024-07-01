number = gets.to_i
line = gets.chomp.split(" ").map(&:to_i)
linear = []
for i in 0..number - 1
  linear[i] = line[i] - i - 1
end
sum = 0
for i in 0..number - 1
  sum += linear[i]
end

result = sum / number
inst = sum % number

if inst*2 >= number && sum >= 0
  result += 1
elsif inst*2 <= number && sum < 0
  result -= 1
end

answer = 0
for i in 0..number - 1
  answer += (line[i] - result - i - 1).abs
end

print answer
