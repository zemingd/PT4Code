a = gets.split(" ").map{|s|s.to_f}

d = a[0].to_i/a[1].to_i
r = a[0].to_i%a[1].to_i
f = (a[0]/a[1]).round 6

puts d.to_s+" "+r.to_s+" "+f.to_s