x = []

5.times do |i|
  x << gets.to_i
end

min = 10
sum = 0
for i in x
  min = i%10 if min > i%10 && i%10 != 0
  sum += i.ceil(-1)
end

sum -= 10 - min

puts sum