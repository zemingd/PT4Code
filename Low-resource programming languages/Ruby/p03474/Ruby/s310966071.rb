require 'pp'

a, b = gets.chomp!.split(" ").map(&:to_i)
s = gets.chomp!

if s.match(/[0-9]{#{a},#{a}}-[0-9]{#{b},#{b}}/)
    puts "Yes"
else
    puts "No"
end
