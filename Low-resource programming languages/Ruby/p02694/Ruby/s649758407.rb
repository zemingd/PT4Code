x = gets.chomp.to_i
m = 100
i = 0

while x > m do
  m += m / 100
  i += 1
end

puts i
