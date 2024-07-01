a,b,c = gets.split.map {|i| i.to_i}
if a < b && b < c
	puts "Yes"
else
	puts "No"
end