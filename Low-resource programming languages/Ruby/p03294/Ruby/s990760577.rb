gets
a = gets.split.map(&:to_i)
puts a.inject(:+) - a.length
