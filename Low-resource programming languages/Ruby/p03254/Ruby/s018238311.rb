x = gets.chomp.split(" ")[1].to_i
a = gets.chomp.split(" ")
n = 0
for i in a.sort
	x -= i.to_i
	if x < 0 
		break
    end
  	n += 1
end

puts n