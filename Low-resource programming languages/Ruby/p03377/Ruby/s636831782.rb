a, b, x = gets.chomp.split(' ').map(&:to_i)

if a <= x && x <= a+b
  puts "YES"
else
  puts "NO"
end
