N = gets.chomp

str = "abc"

if N.chars.sort.join == str 
  puts "Yes"
else
  puts "No"
end
