require 'set'

N = gets.to_i

edges = Hash.new {|h,v| h[v] = [] }

(N-1).times do
  u, v, w = gets.split.map(&:to_i)
  edges[u-1] << [u-1, v-1, w]
  edges[v-1] << [v-1, u-1, w]
end

distance = Array.new(N)
distance[0] = 0


q = edges[0]

while !q.empty?
  u, v, w = q.shift
  next if distance[v]
  distance[v] = distance[u] + w
  q += edges[v]
end

distance.each do |d|
  puts d.even? ? '0' : '1'
end
