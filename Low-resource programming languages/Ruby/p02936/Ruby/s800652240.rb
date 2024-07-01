n, q = gets.split.map(&:to_i)
a = Array.new(n){[]}
n.pred.times do
    x, y = gets.split.map(&:to_i)
    a[x - 1] << y - 1
    a[y - 1] << x - 1
end
p = Array.new(n){0}
q.times do |i|
  x, y = gets.split.map(&:to_i)
  p[x - 1] += y
end
c = Array.new(n){0}
c[0] = 1
que = []
que << 0
while que.size > 0
  e = que.shift
  a[e].each do |i|
    next if c[i] > 0
    c[i] = 1
    p[i] += p[e]
    que << i
  end
end
puts p