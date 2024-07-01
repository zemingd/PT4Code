w,h,x,y = gets.chomp.split.map(&:to_i)
flag = 0
s = w*h/2.to_f
flag = (w/2.to_f == x && h/2.to_f == y) ? 1 : 0
puts "#{s} #{flag}"