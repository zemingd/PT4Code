s = gets.chomp.chars

n = s.length
m = (n - 1) / 2
u = (n + 3) / 2

mae = s[0..m - 1]
ushiro = s[u - 1..n - 1]

if mae == mae.reverse && ushiro == ushiro.reverse && s == s.reverse
  puts "Yes"
else
  puts "No"
end
