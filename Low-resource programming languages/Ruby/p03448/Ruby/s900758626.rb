a,b,c,x = 4.times.map{ gets.to_i }
x /= 50
puts (0 .. [x / 10, a].min).inject(0){|s, i| d = x - 10 * i; s + (0 .. [d / 2, b].min).count{|j| d - 2 * j <= c } }