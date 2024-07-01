n, d = gets.split.map &:to_i
pts = n.times.map {gets.split.map &:to_i}
cnt = pts.combination(2).count do |(p, q)|
  dist = d.times.sum { |i| (p[i]-q[i])**2 }
  (0..dist).any? { |d| d*d==dist }
end

p cnt