a, b, c = gets.chomp.split.map(&:to_i).sort
puts (c - b) + (b - a)