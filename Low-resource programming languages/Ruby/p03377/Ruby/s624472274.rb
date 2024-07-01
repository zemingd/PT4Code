a,b,x = gets.split.map &:to_i
if a > x || a+b < x
  puts "No"
elsif a == x || (a < x && a+b >= x)
  puts "Yes"
end
