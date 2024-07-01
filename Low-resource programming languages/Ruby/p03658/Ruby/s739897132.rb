n,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
p a[-k..-1].inject(:+)
