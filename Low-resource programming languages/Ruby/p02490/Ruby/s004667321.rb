loop{
	str=gets.chomp.split(" ")
	x=str[0].to_i
	y=str[1].to_i
	if x==0 && y==0 then
		break
	end
	if x>y
		puts "#{y} #{x}"
	else
		puts"#{x} #{y}"
	end
}