n, m = gets.split.map(&:to_i)
relations = []
m.times do
  a, b = gets.split.map(&:to_i)
  relations << a
  relations << b
end
buckets = Array.new(n, 0)
relations.each do |r|
  buckets[r-1] += 1
end
puts buckets
