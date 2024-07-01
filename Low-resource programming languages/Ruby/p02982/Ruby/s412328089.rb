def distance(p1, p2)
  distance = 0
  0.upto(p1.size - 1) do |i|
    distance += (p1[i] - p2[i]) ** 2
  end
  Math.sqrt(distance)
end

def good_distance(d)
  ans = 0
  0.upto(d.size - 2) do |i|
    (i + 1).upto(d.size - 1) do |j|
      dist = distance(d[i], d[j])
      ans += 1 if (dist - dist.to_i).zero?
    end
  end
  ans
end

n, d = gets.split.map(&:to_i)
d = []
n.times{ d << gets.split.map(&:to_i) }

puts good_distance(d)
