a, b, c = gets.split.map(&:to_i)
d = a.gcd(b)
if d == 1
  puts "YES"
elsif d > 1 and c % d == 0
  puts "YES"
else
  puts "NO"
end