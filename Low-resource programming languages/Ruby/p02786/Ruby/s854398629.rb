a = gets.to_i
sum = 0
count = 1
while a > 0
  a = a / 2
  sum = sum + count
  count= count * 2
end
puts sum