pqr_array = gets.split(" ").map(&:to_i)
pqr_array.sort!
sum = pqr_array[0]+pqr_array[1]
puts sum