N, M = gets.split.map(&:to_i)
h = []
h = gets.split.map(&:to_i)
a = []
b = []
"模範解答"
# ma = []
# ma = ma.fill(0,0..N-1)
# M.times do |i|
#   a[i], b[i] = gets.split.map(&:to_i)
#   ma[a[i]-1] = [ h[b[i]-1], ma[a[i]-1] ].max
#   ma[b[i]-1] = [ h[a[i]-1], ma[b[i]-1] ].max
# end
# ans = 0
# N.times do |i|
#   if ma[i] < h[i]
#     ans += 1
#   end
# end
# puts ans

"隣接行列使ってやるなら"
adj = []
N.times do |i|
  adj[i] = []
  adj[i].fill(0, 0..N-1)
end
M.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
  adj[a[i]-1][b[i]-1] = h[b[i]-1]
  adj[b[i]-1][a[i]-1] = h[a[i]-1]
end

ans = 0
N.times do |i|
  if adj[i].max == 0
    ans += 1
  elsif adj[i].max < h[i]
    ans += 1
  end
end
puts ans
