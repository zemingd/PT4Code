n = gets.chomp.to_i
uvw = []
(n-1).times do
  uvw.push gets.split.map(&:to_i)
end
$d = []
$d[1] = 0
suvw = uvw.sort_by(&:first)
$h = Hash.new([])
suvw.each do |e|
  u = e[0]
  v = e[1]
  w = e[2]
  $h[u] += [[v, w]]
  $h[v] += [[u, w]]
end
def dfs(u)
  $h[u].each do |e|
    next if $d[e.first]

    $d[e.first] = $d[u] + e.last
    dfs(e.first)
  end
end
dfs(1)
color = []
1.upto(n) do |i|
  if $d[i].even?
    color[i] = 0
  else
    color[i] = 1
  end
end
puts color[1..n]
