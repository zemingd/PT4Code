n = gets.to_i
for i in 1..n do
	if i % 3 == 0
		print " #{i}"
	elsif i % 10 == 3
		print " #{i}"
	end
end
print " "