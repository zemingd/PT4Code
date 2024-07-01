n, m = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)

if n >= m
  p 0
  exit
end

x.sort!

l = []
(m-1).times do |i|
  l[i] = x[i+1] - x[i]
end

l.sort!

k = m - n

ans = 0
k.times do |i|
  ans += l[i]
end
p ans
