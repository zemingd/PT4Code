(X, Y, Z, K) = gets.split.map(&:to_i)
data = []
3.times do
  data << gets.split.map(&:to_i)
end
ab = data[0].product(data[1]).map do |x, y|
  x + y
end.sort.reverse[0, K]
abc = ab.product(data[2]).map do |e, z|
  e + z
end.sort.reverse[0, K]
abc.each do |r|
  puts r
end