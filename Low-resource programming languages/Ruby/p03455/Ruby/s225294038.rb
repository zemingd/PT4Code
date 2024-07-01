b,c=gets.chomp.split(" ").map(&:to_i);
d=b*c
if(d%2 == 1)
  puts "Odd"
else
  puts "Even"