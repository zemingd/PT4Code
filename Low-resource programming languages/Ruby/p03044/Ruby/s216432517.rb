require 'set'
N = gets.to_i
uvws = (N-1).times.map{ gets.split.map(&:to_i) }
neigbors = []
uvws.each do |uvw|
  u,v,w = uvw
  neigbors[u-1] ||= []
  neigbors[u-1] << [v-1, w]
  neigbors[v-1] ||= []
  neigbors[v-1] << [u-1, w]
end

colors = [0]
candidates = []
already = Set[0]

neigbors[0].each do |arr|
  target,weight = arr
  already << target
  candidates << [0, target, weight]
end

while !candidates.empty?
  from,to,weight = candidates.pop
  # puts [from,to,weight].to_s
  colors[to] = colors[from] + (weight%2==0 ? 0 : 1) % 2
  neigbors[to].each do |arr|
    target,weight = arr
    next if already.include? target
    already << target
    candidates << [to, target, weight]
  end
end

colors.each do |color|
  puts color
end
