a,b,x = gets.split.map &:to_i
if a > x || a+b < x
  puts "NO"
elsif a == x || (a < x && a+b >= x)
  puts "YES"
end