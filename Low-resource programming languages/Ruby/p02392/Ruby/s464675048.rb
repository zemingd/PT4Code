a, b, c = gets.split( " " )
a = a.to_i
b = b.to_i
c = c.to_i
if a < b
  if b < c
  puts "Yes"
 else
  puts "No"
 end
else
  puts "No"
end