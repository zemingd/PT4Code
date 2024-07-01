x = gets.to_i

m = 100
sum = 0

while m < x do
  m = m + ((m * 0.01).floor) 
  sum += 1
end

puts sum