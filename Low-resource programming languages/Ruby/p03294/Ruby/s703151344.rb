n = gets.to_i
a = gets.split.map &:to_i
p a.inject(:+)-n