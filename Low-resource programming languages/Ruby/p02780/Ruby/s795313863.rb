n,k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
data = [0]

(0..n-1).each do |i|
  data[i+1] = data[i] + (p[i] + 1)/2.0
end

ans = 0
(n-k+1).times do |i|
  buf = data[i+k] - data[i]
  ans = [ans, buf].max
end
puts ans
