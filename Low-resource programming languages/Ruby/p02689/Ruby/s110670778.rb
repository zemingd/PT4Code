def solve
  n, m = gets.split.map!(&:to_i)
  h = gets.split.map!(&:to_i)
  ab = []
  ma = []
  ans = 0

  (0..(m - 1)).each do |i|
    ab[i] = gets.split.map!(&:to_i)
  end

  (0..(n - 1)).each do |i|
    ma[i] = 0
  end

  (0..(m - 1)).each do |i|
    ma[ab[i][0] - 1] = h[ab[i][1] - 1] if ma[ab[i][0] - 1] <= h[ab[i][1] - 1]
    ma[ab[i][1] - 1] = h[ab[i][0] - 1] if ma[ab[i][1] - 1] <= h[ab[i][0] - 1]
  end

  (0..(n - 1)).each do |i|
    ans += 1 if h[i] > ma[i]
  end

  print ans
end
solve