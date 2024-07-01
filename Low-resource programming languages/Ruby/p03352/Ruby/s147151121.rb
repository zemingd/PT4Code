x = gets.to_i
a = 0
j = 1
for i in 2..10
	while j ** i < x
		if(j ** i > a)then
			a = j ** i
		end
		j += 1
	end
end
puts a