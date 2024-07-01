require "matrix"

n, d = gets.chomp.split.map(&:to_i)
points = []
n.times{points << gets.chomp.split.map(&:to_i)}
ans = 0

points.combination(2) do |p1, p2|
  v1 = Vector[*p1]
  v2 = Vector[*p2]
  ans += 1 if (v2 - v1).r % 1 == 0
end

puts ans