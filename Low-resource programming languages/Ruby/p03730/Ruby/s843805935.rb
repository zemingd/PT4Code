a,b,c = gets.chomp.split(' ').map(&:to_i)
if (a == 1 || c % a.gcd(b) == 0) then
  puts "YES"
else
  puts "NO"
end