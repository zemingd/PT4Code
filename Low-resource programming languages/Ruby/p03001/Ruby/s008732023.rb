io = STDIN
w,h,x,y=io.gets.split.map(&:to_i)
puts "#{(w*h)/2.0} #{w/2.0==x && h/2.0==y ? 1 : 0}"
