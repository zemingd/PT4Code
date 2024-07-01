while true
	x,y = gets.split(" ").map(&:to_i)
	if x ==0 && y ==0
		break
	elsif x < y
		puts "#{x} #{y}"
	elsif x > y
		puts "#{y} #{x}"
	else
		puts "#{x} #{y}"
	end
end	