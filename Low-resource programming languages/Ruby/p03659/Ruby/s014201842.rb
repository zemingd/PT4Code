def main
  n = gets.split.map(&:to_i)
  xs = gets.split.map(&:to_i)
  puts solve(xs)
end

def solve(xs)
  total = xs.reduce(:+)
  rs = (1...xs.length).map do |i|
    x = xs.take(i).reduce(:+)
    (2*x - total).abs
  end
  rs.min
end

def show(x)
end

main
