a = gets.chomp.to_i
result = 0
x = gets.chomp.split(" ").map(&:to_i)
for num in 1..a do
  result = x[num]+ result
end
print result