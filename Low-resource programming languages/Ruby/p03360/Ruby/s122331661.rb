xs = gets.split.map(&:to_i)
k = gets.to_i
m = xs.max
rest = xs - [m]
puts m*2**k+rest.reduce(:+)