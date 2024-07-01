INF = 10 ** 7
n, m = gets.split.map(&:to_i)
edges = []
m.times do
  a, b = gets.split.map(&:to_i).map(&:pred)
  a, b = b, a if a > b
  edges << [a, b]
end
edges.sort! { |a, b| (a[0] <=> b[0]).nonzero? || (b[1] <=> a[1]) }
ngs = Hash.new(INF)
edges.each do |from, to|
  ngs[from] = to if ngs[from] > to
end
nearest_ng = INF
ans = 0
n.times do |i|
  if nearest_ng <= i
    ans += 1
    nearest_ng  = INF
  end
  nearest_ng = ngs[i] if nearest_ng > ngs[i]
end
puts ans
