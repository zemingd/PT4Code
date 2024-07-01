n, x = gets.chomp.split.map(&:to_i)
arr = []
n.times{arr << gets.to_i}
puts arr.length + (x - arr.inject(:+)) / arr.min