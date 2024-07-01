a= gets.to_i
b = gets.to_i

d = 0
for c in 1..3 do
	if (a*b*c)%2 == 1 then
		puts "Yes"
		break
	else
		d +=1
	end
end 

if d == 3 then
	puts "No"
end
