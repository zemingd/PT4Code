_,m = gets.split.map(&:to_i)
a = gets.split.map{|e| e.to_i / 2}

l = a.inject{|r,v| r.lcm(v)}
puts (m / l + 1) / 2