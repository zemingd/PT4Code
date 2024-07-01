n, d = gets.split.map(&:to_i)
xs = n.times.map do
  gets.split.map(&:to_i)
end

result = xs.combination(2).to_a.map do |x1, x2|
  x1.zip(x2).map { |p1, p2| (p1-p2)**2 }.reduce(:+)
end.select do |d|
  (Math.sqrt(d).to_i) ** 2 == d
end.count

puts result