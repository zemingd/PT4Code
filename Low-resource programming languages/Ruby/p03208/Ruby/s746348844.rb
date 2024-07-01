N, K = gets.split.map(&:to_i)
h = N.times.map { gets.to_i }.sort
dis = Array.new
(h.size-K+1).times do |i|
  dis[i] = h[i+K-1] - h[i]
end
puts dis.min