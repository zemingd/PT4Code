a,b,c = gets.chomp.split("").map(&:to_i);

if a==7 || b==7 || c==7 then
	puts "Yes"
else
	puts"No"
end
