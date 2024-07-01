n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort

puts h.slice!(0,h.size-k).inject(:+)
