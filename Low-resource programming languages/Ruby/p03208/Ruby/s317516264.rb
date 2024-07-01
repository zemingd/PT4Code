N, K = gets.split.map(&:to_i)
h = []
N.times do |i|
  h[i] = gets.to_i
end
h = h.sort

ans = 10**9
(N-K+1).times do |i|
  ans = [ h[i+K-1] - h[i], ans].min
end

puts ans