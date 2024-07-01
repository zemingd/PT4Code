a,b,x=gets.chomp.split(" ").map(&:to_i);
if x > a and x < a + b then
  puts "YES"
else
  puts "NO"
end