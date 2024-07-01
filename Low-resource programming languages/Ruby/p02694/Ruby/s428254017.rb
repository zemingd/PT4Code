x = gets.to_i
sum = 0
i = 100
while x > i do
  i = (i*1.01).to_i
  sum = sum.succ
end

puts sum