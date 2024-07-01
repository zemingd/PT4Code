t = gets.chomp.split.map(&:to_i)
p t.inject(:+) - t.max