N = gets.to_i
ds = gets.split.map(&:to_i)
ans = 0
(0...(N - 1)).each do |i|
  d = ds[i]
  ((i + 1)...N).each do |j|
    d2 = ds[j]
    ans += d * d2
  end
end
puts ans
