a,b,c = gets.chomp.split(" ").map(&:to_i);
if c >= a && c <= b
	puts "yes"
else
	puts "no"
end