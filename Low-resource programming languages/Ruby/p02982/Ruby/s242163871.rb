require 'complex'
N, D = gets.split(" ").map(&:to_i)

points = []
N.times do
  points << gets.split(" ").map(&:to_i)
end

def dist(a, b)
  d = 0
  D.times do |i|
    d += (a[i] - b[i]) ** 2
  end
  return Math.sqrt(d)
end

count = 0
points.each_with_index do |point, ind|
  (N - ind - 1).times do |j|
    d = dist(point, points[ind + j + 1])
    count += 1 if d.to_i.to_f == d
  end
end

puts count