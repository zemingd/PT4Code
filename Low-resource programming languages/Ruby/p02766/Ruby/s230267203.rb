n, k = gets.chomp.split.map(&:to_i)
result = 1
tmp = n / k
while tmp != 0
  result = result + 1
  tmp = tmp / k
end

puts result
