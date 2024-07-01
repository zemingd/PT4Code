a,b,c = gets.chomp.split(" ").map(&:to_i)
if (a==b and b!=c) or (b==c and c!=a) or (c==a and a!=b)
  puts "Yes"
else
  puts "No"
end
