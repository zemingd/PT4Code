_, M = gets.split.map &:to_i
a = gets.split.map(&:to_i).sort
M.times{(a<<a.pop/2).sort!}
p a.inject(:+)