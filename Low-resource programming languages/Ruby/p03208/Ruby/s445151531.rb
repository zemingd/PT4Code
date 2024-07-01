n,k  = gets.split.map(&:to_i)
h = []
result = 1000000000
n.times do |i|
  h[i] = gets.to_i
end
h.sort!
(n-k+1).times do |i|
  result = h[i+k-1]-h[i] if result > h[i+k-1]-h[i]
end
puts result