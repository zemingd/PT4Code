n = gets.to_i
ds = gets.split.map(&:to_i)
ans = 0
(0..n-1).each do |i|
  ((i+1)..n-1).each do |j|
    ans += ds[i] * ds[j]
  end
end
puts ans