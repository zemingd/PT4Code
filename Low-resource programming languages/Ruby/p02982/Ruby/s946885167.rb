n, d = gets.split.map(&:to_i)
points = n.times.map { gets.split.map(&:to_i) }

ans = 0
points.combination(2).each do |a, b|
  dist = 0
  d.times do |i|
    dist += (a[i] - b[i])**2
  end
  ans += 1 if Math.sqrt(dist) == Math.sqrt(dist).to_i
end

puts ans
