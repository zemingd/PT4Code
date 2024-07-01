y,m,d = gets.chomp.split("/").map(&:to_i)
if y == 2019
	if m > 5
		puts "TBD"
	else
		puts "Heisei"
	end
elsif y < 2019
	puts "Heisei"
else
	puts "TBD"
end



