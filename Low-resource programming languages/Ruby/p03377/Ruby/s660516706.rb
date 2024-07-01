a,b,x = gets.split.map(&:to_i)

if  a > x
  puts "NO"
elsif (x-a) < b
  puts "YES"
else
  puts "NO"
end
