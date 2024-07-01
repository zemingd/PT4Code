a, b, c, x = readlines.map(&:to_i)
cnt = 0
(0..a).each do |i|
  (0..b).each do |j|
    n = x - 500*i - 100*j
    cnt += 1 if n >= 0 && n <= 50*c
  end
end
puts cnt