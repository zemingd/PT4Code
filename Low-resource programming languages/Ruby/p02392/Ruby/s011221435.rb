x = gets.split
a = x[0].to_i
b = x[1].to_i
c = x[2].to_i

if a < b && b < c then
  puts "Yes"
else
  puts "No"
end