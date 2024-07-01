N = gets.to_i
UVWs = readlines.map{|l| l.split.map(&:to_i)}

h = UVWs.each_with_object(Hash.new{|h, k| h[k] = []}){|(u, v, w), h| h[u] << [v, w % 2]; h[v] << [u, w % 2]}
c, s = [nil, 0], [1]
until s.empty?
  t = s.pop
  h[t].each do |u, w|
    next if c[u]
    c[u] = (c[t] + w) % 2
    s << u
  end
end
puts c.drop(1)