a = gets.chomp
b = gets.chomp

if a == b.reverse && b == a.reverse
  puts "YES"
else
  puts "NO"
end

