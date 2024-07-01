n, k = gets.split.map(&:to_i)

ans = 0.0
(1..[n, k - 1].min).each do |i|
  ans += 1.0 / n * 0.5**(((k.to_f / i).ceil - 1).bit_length)
end
ans += 1.0 / n * [0, n - k + 1].max
puts ans