n, X = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)

puts (ary.min_by{|x| (x - X).abs} - X).abs
