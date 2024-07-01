n = gets.to_i
sum = 100
count = 0
while sum < n
  sum += (sum * 0.01).floor
  count += 1
end
puts count