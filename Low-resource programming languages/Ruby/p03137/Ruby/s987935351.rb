n, m = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
x.sort!
dist = []

last = x[0]
(m-1).times do |i|
  dist << (x[i+1] - last)
  last = x[i+1]
end

dist.sort!

answer = dist[0..(-n)].reduce(0, :+)

p answer
