n,x = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i)
dist = strs.map{ |num| (x - num).abs }
g = dist[0]
dist.each do |dis|
  g = g.gcd(dis)
end
print g
