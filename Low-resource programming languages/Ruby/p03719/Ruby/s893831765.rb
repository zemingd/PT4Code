input = gets.chomp.split(" ")

if input[2].to_i >= input[0].to_i && input[2].to_i <= input[1].to_i
  puts "Yes"
else
  puts "No"
end