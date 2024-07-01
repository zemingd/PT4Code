a,b,c = gets.split.map(&:to_i)

if a + b == c || b + c == a || a + c == b
  puts "YES"
else
  puts "NO"
end
