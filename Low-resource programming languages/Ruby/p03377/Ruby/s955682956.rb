a, b, x = gets.chomp.split.map(&:to_i)
if a <= x and x <= a + b
  puts "YES"
  exit
end
puts "NO"
