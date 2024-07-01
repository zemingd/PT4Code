a, b = gets.chomp.split(" ")
if a < b then
	puts a * b.to_i
else
	puts b * a.to_i
end
