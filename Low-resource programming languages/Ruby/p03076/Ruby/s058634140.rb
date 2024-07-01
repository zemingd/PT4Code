a = Array.new(5)

5.times{ |i| a[i] = gets.to_i }

r = Array.new(5, 0)
b  = Array.new(5, 0)

# 5.times{ |i| r[i] = (a[i]).ceil(-1) - a[i] }

r = a.map{ |k| (k*1.0).ceil(-1) - k }
# r = a.map{ |k| k - k%10 + 10 - k }
r.sort!
b = r[0, 4]

ans = a.inject(:+) + b.inject(:+)
puts ans

