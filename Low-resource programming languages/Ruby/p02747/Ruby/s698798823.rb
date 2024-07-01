#require "pry-byebug"
str = gets.chomp
while str.index("hi") == 0
  str.slice!(0,2)
end
if str.length == 0
  puts "Yes"
else
  puts "No"
end