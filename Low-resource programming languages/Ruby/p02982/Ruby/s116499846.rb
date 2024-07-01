n, d = gets.split.map(&:to_i)
p = []
n.times do
  p << gets.split.map(&:to_i)
end
cnt = 0
(0...n).to_a.combination(2).each do |c|
  p1 = p[c[0]]
  p2 = p[c[1]]
  tmp = 0
  d.times do |i|
    tmp += (p1[i] - p2[i]) ** 2
  end
  dist = Math.sqrt(tmp)
  cnt += 1 if dist == dist.ceil
end
puts cnt
