a = Array.new(5)

5.times{ |i| a[i] = gets.to_i }

r = Array.new(5, 0)
b  = Array.new(5, 0)
# r = a.map{ |k| k.ceil(-1) - k }
# r.sort!
# b = r[0, 4]

ans = a.inject(:+)
ans += a.inject(:+)
puts ans

