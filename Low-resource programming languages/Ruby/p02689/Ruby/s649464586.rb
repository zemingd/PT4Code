n,m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
g = Array.new(n+1){[]}

m.times do
  a,b = gets.split.map(&:to_i).map{|x|x-1}
  g[a] << b
  g[b] << a
end

ans = 0
n.times do |i|
  t = []
  g[i].each do |j|
    t << h[j]
  end
  ans += 1 if t.empty? || h[i] > t.max
end
p ans