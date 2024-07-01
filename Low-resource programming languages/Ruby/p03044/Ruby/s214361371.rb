n = gets.chomp.to_i
uvw = []
(n-1).times do
  uvw.push gets.split.map(&:to_i)
end
d = []
d[1] = 0
suvw = uvw.sort_by(&:first)
2.times do
suvw.each do |e|
  u = e[0]
  v = e[1]
  w = e[2]
  d[u] = d[v] + w if d[v] && !d[u]
  d[v] = d[u] + w if d[u] && !d[v]
end
end
color = []
1.upto(n) do |i|
  if d[i].even?
    color[i] = 0
  else
    color[i] = 1
  end
end
puts color[1..n]
