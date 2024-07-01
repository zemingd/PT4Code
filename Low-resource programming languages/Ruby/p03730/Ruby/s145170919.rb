a,b,c = gets.chomp.map(&:to_i)
if (a == 1 || a.gcd(b) == 1) then
  puts "YES"
else
  puts "NO"
end