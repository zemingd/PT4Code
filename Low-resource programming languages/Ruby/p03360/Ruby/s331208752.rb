a, b, c = gets.split.map(&:to_i)
k = gets.to_i

m = [a, b, c].max
res = 0
res += a if a != m
res += b if b != m
res += c if c != m
puts res + m*2**k
