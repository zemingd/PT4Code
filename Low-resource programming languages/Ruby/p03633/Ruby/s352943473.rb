n = gets.chomp.to_i
a = n.times.map{gets.chomp.to_i}
ans = 1
a.each {|d|ans = ans.lcm(d)}
p ans