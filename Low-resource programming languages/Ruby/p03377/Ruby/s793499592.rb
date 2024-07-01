a,b,x = gets.split.map(&:to_i)

if  a > x
  puts "No"
elsif (x - a) > b
  puts "No"
elsif  (x - a)  <= b
  puts "YES"
else
  puts "No"
end
