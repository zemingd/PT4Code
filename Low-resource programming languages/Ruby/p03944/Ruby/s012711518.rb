w, h, n = gets.split.map(&:to_i)
points = n.times.map { gets.split.map(&:to_i) }

x1 = points.select{|x,y,a| a == 1 }.map{|x,_,_| x}.max || 0
x2 = points.select{|x,y,a| a == 2 }.map{|x,_,_| x}.min || w
y1 = points.select{|x,y,a| a == 3 }.map{|_,y,_| y}.max || 0
y2 = points.select{|x,y,a| a == 4 }.map{|_,y,_| y}.min || h
puts [x2-x1, 0].max * [y2-y1, 0].max