str = gets.split

if str[1] == '+'
  puts str[0].to_i + str[2].to_i
elsif str[1] == '-'
  puts str[0].to_i - str[2].to_i
end