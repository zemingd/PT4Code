N = gets.to_i
ds = gets.split.map(&:to_i)
ans = 0
(0...(N - 1)).each do |i|
  ((i + 1)...N).each do |j|
    ans += (ds[i] * ds[j])
  end
end
puts ans
