N = gets
a = gets.split.map(&:to_i).inject(:*)
a = -1 if a > a ** 18
puts a