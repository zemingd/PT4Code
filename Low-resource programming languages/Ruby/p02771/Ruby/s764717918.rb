a, b, c = gets.split(" ")

if a == b && b == c && c == a  
  puts "No"
elsif a == b || b == c || c == a
  puts "Yes"
else
  puts "No"
end