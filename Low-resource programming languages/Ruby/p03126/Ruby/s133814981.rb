n, m = gets.split.map &:to_i
a = gets.split.map(&:to_i)[1..-1]
(n-1).times do
  a = a & gets.split.map(&:to_i)[1..-1]
end
p a.size