w, h, x, y = gets().chomp.split("\s").map{|x| x.to_i}

# if (x == 0 || x == w) || (y == 0 || y == h)
#   r = (w * h).to_f / 2.0
#   puts "#{r}\s0"
#   exit
# end

### x
v1 = x * h
v2 = (w - x) * h
min1 = [v1, v2].min

### y
h1 = w * y
h2 = w * (h - y)
min2 = [h1, h2].min

r = [min1, min2].max
pat = min1 == min2 ? '1' : '0'
puts "#{r}\s#{pat}"
