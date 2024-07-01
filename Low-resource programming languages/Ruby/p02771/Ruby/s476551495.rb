str = gets.chomp.split(' ').map(&:to_i)
if str[0] == str[1] && str[0] != str[2]
  puts "Yes"
elsif str[0] == str[2] && str[0] != str[1]
  puts "Yes"
elsif str[1] == str[2] && str[1] != str[0]
  puts "Yes"
else
  puts "No"
end