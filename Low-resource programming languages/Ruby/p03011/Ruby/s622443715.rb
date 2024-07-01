pqr_array = gets.split(" ").map(&:to_i)
p pqr_array
pqr_array.sort!
sum = pqr_array[0]+pqr_array[1]
puts sum