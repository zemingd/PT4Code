n = gets.to_i
rent = 100000
count = 0

while count < n
  rent = (rent * 1.05 / 1000).ceil * 1000
  count += 1
end

puts rent