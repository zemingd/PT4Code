arr = gets.split.map(&:to_i)
puts arr.inject(:+) - arr.max