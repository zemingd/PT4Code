a = []
gets.to_i.times{ a << gets.to_i }
puts a.inject{|x, y| x.lcm(y) }