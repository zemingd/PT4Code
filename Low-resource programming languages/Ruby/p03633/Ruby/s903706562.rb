n = gets.to_i
x = gets.to_i
(n - 1).times do
  x = x.lcm(gets.to_i)
end
puts x