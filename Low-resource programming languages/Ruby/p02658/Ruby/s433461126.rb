gets
a = gets.split.map(&:to_i).inject(:*)
puts a > 10**18 ? -1 : a