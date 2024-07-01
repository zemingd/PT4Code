input = gets.strip.split(' ')
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

if (a < b) && (b < c)
	puts "Yes"
else
	puts "No"
end
