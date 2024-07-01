d,t,s = gets.chomp.split(" ").map(&:to_i);

if t*s >= d then
	puts "Yes"
else
	puts"No"
end
