input = gets.chomp.split(" ").map { |n| n.to_i }
input.sort!
if input[0] + input[1] == input[2]
	puts "Yes"
else
	puts "No"
end

