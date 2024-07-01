n, k = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

puts l.max(k).inject(:+)
