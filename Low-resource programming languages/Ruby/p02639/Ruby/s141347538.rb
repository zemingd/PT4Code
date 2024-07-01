X = gets.split.map(&:to_i)

puts X.index(&:zero?) + 1
