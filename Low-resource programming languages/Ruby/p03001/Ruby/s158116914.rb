w,h,x,y=gets.split.map(&:to_i)
puts "#{w*h*1.0/2} #{(w.even? and h.even? and w==2*x and h==2*y)?1:0}"