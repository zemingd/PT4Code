m,f,r = gets.chomp.split(" ").map(&:to_i)
while true
	break if m == -1 && f == -1 && r == -1
	puts "F" if m == -1 || f == -1
	if m + f >= 80
		puts "A"
	elsif m + f >= 65
		puts "B"
	elsif m + f >= 50
		puts "C"
	elsif m + f >= 30
		puts "D"
	else
		puts "F"
	end
end