def solve n, a, b
  if (b - a) % 2 == 0
    (b - a) / 2
  else
    [b - 1, n - a].max
  end
end

n, a, b = gets.chomp.split.map(&:to_i)
puts solve(n, a, b)