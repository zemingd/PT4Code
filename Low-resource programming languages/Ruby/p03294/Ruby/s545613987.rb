gets
a = gets.split.map(&:to_i)
l = a.inject(1){|s, e|s.lcm(e)}-1
puts a.inject(0){|s, e|s+l%e}