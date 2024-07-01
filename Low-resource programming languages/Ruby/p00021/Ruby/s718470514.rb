def triangleArea(a, b)
  ((a[0] * b[1] - a[1] * b[0])/2.0).abs
end

def isParallel(p)
  eps = 1e-11
  va = [p[0] - p[2], p[1] - p[3]]
  vb = [p[4] - p[6], p[5] - p[7]]
  if triangleArea(va, vb) < eps
    true
  else
    false
  end
end

if __FILE__ == $0
  points = gets.to_i.times.map{ gets.split.map(&:to_f) }.each do |points|
    puts (isParallel(points) ? "YES" : "NO")
  end
end