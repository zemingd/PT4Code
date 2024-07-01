a = gets.chomp.split.map(&:to_i)
p a.max * 9 + a.inject(:+)