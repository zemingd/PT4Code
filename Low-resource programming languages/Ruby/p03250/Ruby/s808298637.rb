a = gets.split.map{|x| x.to_i}
a.sort!
puts (a[0] + a[1] + 10 * a[2])