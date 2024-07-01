N, K = gets.chop.split.map(&:to_i)
h = []
N.times { h << gets.to_i }
h.sort!
min = h[K-1] - h[0]
i = 1
while i + K <= N
  if min > h[i+K-1] - h[i]
    min = h[i+K-1] - h[i]
  end
  i += 1
end
puts min
