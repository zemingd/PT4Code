a,b,c,d = gets.chomp.split.map(&:to_i)

if a < c
	x = a+b - c
	x = d -c if x > d-c		
elsif a > c
	x =c+d - a
	x = b-a if x > b-a
else
	if c >d
		x = c-d
	else
		x = d-c
	end
end

if x <= 0
	puts 0
else
	puts x
end