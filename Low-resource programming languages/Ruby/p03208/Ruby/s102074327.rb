n, k = gets.split.map(&:to_i)
h = []
n.times { h << gets.to_i }
h = h.sort
s = []
k.times { |i| s << h[i+k-1] - h[i] }
puts s.min