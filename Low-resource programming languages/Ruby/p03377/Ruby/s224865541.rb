a, b, x = gets.split.map(&:to_i)

if x <= a + b && a <= x
  puts "YES"
else
  puts "NO"
end
