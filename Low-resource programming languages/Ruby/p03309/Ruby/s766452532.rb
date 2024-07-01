number = gets.to_i
line = gets.chomp.split(" ").map(&:to_i)
linear = []
for i in 0..number - 1
  linear[i] = line[i] - i - 1
end
result = linear.sort
inst = 0
i = number / 2
if number % 2 == 0
  inst = result[i] + result[i - 1]
  inst /= 2
else
  inst = result[i]
end
answer = 0
for i in 0..number - 1
  answer += (line[i] - inst - i - 1).abs
end

print answer
