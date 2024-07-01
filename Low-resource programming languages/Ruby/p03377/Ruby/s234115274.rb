a,b,x = gets.chomp.split(' ').map(&:to_i)
if x < a || x >= a + b
  puts "NO"
else
  puts "YES"
end