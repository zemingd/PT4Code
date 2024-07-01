x = gets.chomp.to_i

count = 0
m = 100
while true do
  m += m/100
  count += 1
  break if m >= x
end

puts count