input = gets.split.map(&:to_s)
if input[0] <= input[2] && input[2] <= input[1]
  puts "Yes"
else
  puts "No"
end