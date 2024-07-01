# 5, 19, 0
n, m = gets.split.map &:to_i # N個おける, M個地点
x = gets.split.map &:to_i
x.sort! # logM

a = []
(x.size - 1).times do |i| # M
  a << x[i + 1] - x[i]
end
a.sort!
(n - 1).times do # N
  # break if a.size < 2
  # ind = a.index(a.max) # M
  # a[ind] = 0
  a.pop
end

if a.empty?
  p 0
  exit
end
p a.inject(&:+) # N
# a.index(a.max)
