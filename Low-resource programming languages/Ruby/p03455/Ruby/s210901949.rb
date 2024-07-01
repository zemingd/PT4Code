a,b = gets.chomp.split(" ").map(&:to_i)
ans = (a*b)/2
if ans.even?
  puts "Even"
else
  puts "Odd"
end