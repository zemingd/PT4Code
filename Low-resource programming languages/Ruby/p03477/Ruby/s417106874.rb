a=gets.to_i
b=gets.to_i
c=gets.to_i
d=gets.to_i
l=a+b
r=c+d
if l>r
  puts "Left\n"
elsif l==r
  puts "Balanced\n"
else
  puts "Right\n"
end