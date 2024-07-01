_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
m.times do
  a[-1] /= 2
  a.sort!
end
p a.inject(:+)