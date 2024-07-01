N = gets.to_i
Hs = gets.split.map(&:to_i)

puts Hs.slice_when{|a, b| a < b}.map(&:size).max - 1