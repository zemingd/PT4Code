line = gets.chomp.split("").map(&:to_i);

line2 = line.reverse

if line2[0] == 3 then
	puts "bon"
elsif
	line2[0] == 0 || line2[0] == 1 || line2[0] == 6 || line2[0] == 8 then
	puts "pon"
else
	puts "hon"
end


