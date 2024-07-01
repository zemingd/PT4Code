n, m = gets.split.map(&:to_i)
points = gets.split.map(&:to_i).sort

if n > m
  p 0
  exit 0
end

gaps = []
(points.count - 1).times do |index| #100000
  gaps.push(points[index + 1] - points[index])
end
gaps.sort!.reverse!

p gaps.drop(n - 1).inject(:+)