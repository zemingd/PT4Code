w,h,x,y = gets.chomp.split.map(&:to_f)
flag = 0
if x == w/2 && y == h/2
	flag = 1
end

puts "#{w*h/2} #{flag}"