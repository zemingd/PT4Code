# 5, 19, 0
n, m = gets.split.map &:to_i # N個おける
x = gets.split.map &:to_i
x.sort!
# p x
a = []
(x.size - 1).times do |i|
  a << x[i + 1] - x[i]
end
# p a
(n - 1).times do |_i|
  break if a.size < 2
  ind = a.index(a.max)
  a[ind] = 0
end
# p a
if a.empty?
  p 0
  exit
end
p a.inject(&:+)
# a.index(a.max)
