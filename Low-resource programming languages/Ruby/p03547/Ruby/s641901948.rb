x,y=gets.split
x = "ABCDEF".index(x)
y = "ABCDEF".index(y)
if x == y then
  puts "="
elsif x > y then
  puts ">"
else
  puts "<"
end