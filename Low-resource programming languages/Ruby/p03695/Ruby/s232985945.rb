n = gets.to_i
a = gets.split.map{ |x| x.to_i / 400 }
un_red = a.select{ |x| x < 8 }.uniq.size
red = a.count{ |x| x >= 8 }
print "#{[un_red, 1].max} #{un_red + red}\n"

