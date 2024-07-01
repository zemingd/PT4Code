distances = gets.strip.split(' ').map(&:to_i)
r = 1000
distances.combination(2).each do |d|
  dis = d.inject(&:+)
  r = dis if dis < r
end
puts r