n,x = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split(' ').map(&:to_i)
if x == 1
  puts strs[0]-x
  exit
end
dist = strs.map{ |num| (x - num).abs }
g = dist[0].gcd(dist[1])
dist.uniq.each_with_index do |dis, idx|
  break if idx = x-1
  g = g.gcd(dist[idx+1])
end

print g
