n, x = gets.chomp.split(" ").map(&:to_i)
arr = n.times.map { gets.to_i }
puts (x - arr.inject(:+)) / arr.min.to_i + n
