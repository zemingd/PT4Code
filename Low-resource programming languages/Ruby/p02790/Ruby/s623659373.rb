input = gets.chomp.split(" ")
if input[0] < input[1]
    puts input[0].to_s * input[1].to_i
elsif input[0] > input[1]
    puts input[1].to_s * input[0].to_i
else
    puts input[0].to_s * input[1].to_i
end
