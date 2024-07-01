nk, *values = readlines.map(&:chomp)
values = values.map {|v| v.split(' ').map(&:to_i)}
x = values.reduce(Hash.new {|h, k| h[k] = 0}) do |result, e|
  result[e.first] += e.last
  result
end
k = nk.split(' ').last.to_i
y = x.keys.sort.each do |key|
  break key if x[key] >= k
  k -= x[key]
end
p y