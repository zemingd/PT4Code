n = gets.chomp.to_i
result = 1
n.times do
  a = gets.chomp.to_i
  result = a.lcm(result)
end
puts result