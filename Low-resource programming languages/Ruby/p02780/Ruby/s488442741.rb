n,k = gets.split.map(&:to_i)
m = gets.split.map(&:to_i)
cumsum = []
cumsum[0] = 0
n.times do |i|
  cumsum[i+1] = cumsum[i] + (m[i] + 1) / 2.0
end
ans = 0
(n-k+1).times do |i|
  tmp = cumsum[i+k] - cumsum[i]
  ans = [ans, tmp].max
end
p ans