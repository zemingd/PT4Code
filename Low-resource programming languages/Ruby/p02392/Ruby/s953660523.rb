a, b, c = gets.split(" ").map(&:to_i)
if b.between?(a, c)
  puts "YES"
else
  puts "NO"
end