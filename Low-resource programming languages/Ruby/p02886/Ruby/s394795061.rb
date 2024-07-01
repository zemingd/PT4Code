gets.to_i
ds = gets.split.map(&:to_i)
ans = 0
ds.combination(2) do |x, y|
  ans += (x * y)
end
puts ans
