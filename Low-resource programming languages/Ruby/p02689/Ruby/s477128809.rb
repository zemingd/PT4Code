n,m = gets.split.map &:to_i
h = gets.split.map &:to_i
ab = Array.new(m){ gets.split.map(&:to_i).map{ _1 - 1 } }
g = Array.new(n){ [] }

ab.each do |i,j|
  g[i] << j
  g[j] << i
end

gg = g.map do |vs|
  vs.map{|v|h[v]}.max || 10**12
end

ggg = gg.map.with_index do |hh,i|
  hh > h[i]
end

ans = ggg.count(true)
puts ans