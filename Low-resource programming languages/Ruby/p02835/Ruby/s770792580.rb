a=gets.split.map(&:to_i)
if a.sum >= 22 
	puts "bust"
else
	puts "win"
end
