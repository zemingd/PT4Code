input = gets.chomp.split("")
if input[0] == input[1] or input[1] == input[2] or input[2] == input[3]
    puts "Bad"
else
    puts "Good"
end