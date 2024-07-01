N, M = gets.split.map(&:to_i)
h = []
h = gets.split.map(&:to_i)
a = []
b = []
"想定解"
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

"隣接リストを用いる"
Adj = Struct.new(:id, :l)
adj = []
N.times do |i|
  adj[i] = Adj.new(i, [])
end
  
M.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
  adj[a[i]-1].l.push(b[i]-1)
  adj[b[i]-1].l.push(a[i]-1)
end

# puts "#{adj}"

ans = 0
adj.each do |n|
  if n.l.empty?
    ans += 1
  else
    x = 0
    x = n.l.map {|v| v = h[v]}.max
    # puts "n #{n.id}"
    # puts "x #{x}"
    if x < h[n.id]
      ans += 1
    end
  end
end
puts "#{ans}"