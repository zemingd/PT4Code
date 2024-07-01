N, M = gets.chomp.split.map &:to_i
a = []
b = []
while g = gets&.split&.map(&:to_i)
  a << g[0]
  b << g[1]
end
p (((a.max)..(b.min)).to_a).size
