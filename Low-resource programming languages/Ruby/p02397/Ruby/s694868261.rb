while (x, y = gets.split.map(&:to_i)) != [0, 0] do
	if x > y
		puts "#{y} #{x}"
	else puts "#{x} #{y}"
	end
end