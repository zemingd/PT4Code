n = gets.to_i
n.times { arr << gets.to_i }
puts arr.inject(&:gcd)