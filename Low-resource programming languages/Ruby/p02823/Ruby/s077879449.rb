def solve n, a, b
  if (b - a) % 2 == 0
    (b - a) / 2
  else
    [a + (b - a - 1) / 2, n - b + 1 + (b - a - 1) / 2].min
  end
end

n, a, b = gets.chomp.split.map(&:to_i)
puts solve(n, a, b)