n = gets.chomp.to_i
for x in (1..n) do
	if (x % 3 == 0)
		print " " + x.to_s
	elsif (x.to_s.include?("3"))
		print " "
		print x.to_i
	end
end