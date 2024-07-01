a, b, x = gets.chomp.split(" ").map(&:to_i)

if a == x
  puts "YES"
elsif a > x
  puts "NO"
else
  if a + b > x
    puts "YES"
  else
    puts "NO"
  end
end