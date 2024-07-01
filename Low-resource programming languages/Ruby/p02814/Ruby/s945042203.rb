n,m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
l = a.inject{|r,v| r.lcm(v)} / 2

puts (m / l + 1) / 2