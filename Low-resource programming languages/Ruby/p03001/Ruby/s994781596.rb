w,h,x,y = gets.split.map(&:to_f)
c = w / 2 == x && h / 2 == y ? 1 : 0
puts "#{w * h / 2} #{c}"