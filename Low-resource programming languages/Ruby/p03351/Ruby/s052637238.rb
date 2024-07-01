input = gets.chomp.split(' ').map(&:to_i)

if (input[0] - input[2]).abs <= input[3]
  puts "Yes"
elsif (input[0] - input[1]).abs <= input[3] && (input[1] - input[2]).abs <= input[3]
  puts "Yes"
else
  puts "No"
end
