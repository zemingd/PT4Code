s = gets
y = s.slice(0,4)
m1 = s.slice(5)
m2 = s.slice(6)
d = s.slice(8,9)
if y.to_i < 2019
	puts "Heisei"
elsif y.to_i > 2019
	puts "TBD"
else #y=2019の時
	if m1.to_i>0
		puts "TBD"
	else
		if m2.to_i < 4
			puts "Heisei"
		else #m=<4の時
			if d.to_i <= 30
				puts "Heisei"
			else 
				puts "TBD"
			end
		end
	end
end
