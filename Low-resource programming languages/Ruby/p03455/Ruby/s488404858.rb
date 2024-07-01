a,b = gets.chomp.split(" ").map(&:to_i)
if (a*b).even?
  puts "Even"
else
  puts "Odd"
end