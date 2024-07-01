a = gets.chomp.to_i
sum = 100.to_f
year = 0
while true do
  break if a < sum
  sum *= 1.01
  sum = sum.floor
  year += 1
end

puts year