a = gets.to_i
puts a / 2 * a / 2 if a.even?
puts a / 2 * ((a / 2) + 1) unless a.even?