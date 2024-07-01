a=gets.to_i
b=gets.to_i
c=gets.to_i
d=gets.to_i
A=a+b
B=c+d
if A>B
  puts "Left"
elsif A==B
  puts "Balanced"
else
  puts "Right"
end