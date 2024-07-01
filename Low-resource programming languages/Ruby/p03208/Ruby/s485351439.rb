N, K = gets.split(' ').map(&:to_i)

h = []
N.times do 
  h.push(gets.to_i)
end
h.sort!
op = []
(N - K).times do |i|
  op.push(h[i + K] - h[i])
end

puts op.min