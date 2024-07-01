N, X = gets.split(' ').map(&:to_i)
arr = N.times.map {gets.to_i}
r = X - arr.reduce(:+)

puts r / arr.min + N