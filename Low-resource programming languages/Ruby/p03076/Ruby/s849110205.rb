a = Array.new(5)

5.times{ |i| a[i] = gets.to_i }

r = a.map{ |k| k.ceil(-1) - k }.sort

p a.inject(:+) + r[0,4].inject(:+)
