n,k = gets.split.map(&:to_i)
h = []
n.times{h << gets.to_i}
h.sort!

ans = h[0]
i = 0
while i + k - 1 < n
    ans = h[i+k-1] - h[i] if ans > h[i+k-1] - h[i]
    i += 1
end

puts ans