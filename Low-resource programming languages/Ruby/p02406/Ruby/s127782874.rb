n = gets.chomp.to_i

i = 0
while (i+=1) <= n
	if i % 3 == 0 || i % 10 == 3 then
		print " #{i}"
	end
end

puts