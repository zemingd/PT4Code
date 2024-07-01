# Your code here!

arr = gets.strip.split
a = arr[0].to_i
b = arr[1].to_i
c = arr[2].to_i


if a == b && a != c && b != c 
  puts "Yes"
elsif a == c && a != b && b != c 
  puts "Yes"
elsif c == b && a != c && b != a 
  puts "Yes"
elsif
  puts "No"
end