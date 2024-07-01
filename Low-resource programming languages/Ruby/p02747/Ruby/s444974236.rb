require 'pp'

s = gets.chomp!
if s == "hi" || s == "hihi" || s == "hi" * 3 || s == "hi" * 4 || s == "hi" * 5
    puts "Yes"
else
    puts "No"
end
