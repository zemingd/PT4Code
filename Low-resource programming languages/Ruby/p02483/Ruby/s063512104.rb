a = gets.split.map{|x| x.to_i}
a.sort!
puts sprintf("%d %d %d", a[0], a[1], a[2])