As = gets.split.map(&:to_i)

puts -As.minmax.inject(:-)