def main
  n, k = gets.split.map(&:to_i)
  xs = gets.split.map(&:to_i)
  puts solve(k, xs)
end

def solve(k, xs)
  xs.sort.reverse.take(k).reduce(:+)
end

def show(x)
end

main
