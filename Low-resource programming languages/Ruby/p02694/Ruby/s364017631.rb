x = gets.to_i
yokin = 100
count = 0

while yokin <= x 
  yokin += (yokin * 0.01).floor
  count += 1
end

puts count
