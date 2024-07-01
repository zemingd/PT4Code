input = gets.chomp.split(" ").map{|item| item.to_i}

input.sort!

if (input[0]+input[1])==input[2] then
	puts "Yes"
else
	puts "No"
end