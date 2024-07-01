a,b,c = gets.split(" ").map(&:to_i)
if sqrt(a)+sqrt(b)<sqrt(c)
  puts "Yes"
else
  puts "No"
end