n, k = gets.chop.split.map(&:to_i)
h = []
n.times { h << gets.chop.to_i}

h.sort!

ans = h.max

for i in 0..n-k
  ans = [h[i+k-1] - h[i], ans].min
end

puts ans
