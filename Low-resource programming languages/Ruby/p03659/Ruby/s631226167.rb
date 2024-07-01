def main
  n = gets.split.map(&:to_i)
  xs = gets.split.map(&:to_i)
  puts solve(xs)
end

def solve(xs)
  min = Float::INFINITY
  total = xs.reduce(:+)
  x = 0
  for i in xs
    x += i
    cand = (2*x - total).abs
    min = cand if cand < min
  end
  min
end

main
