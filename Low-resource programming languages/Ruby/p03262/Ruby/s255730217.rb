n,x = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i)
dist = strs.map{ |num| (x - num).abs }
g = dist[0]
dist.each_with_index do |dis, idx|
  g = g.gcd(dist[idx])
end
print g