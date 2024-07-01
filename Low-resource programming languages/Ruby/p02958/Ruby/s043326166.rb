n = gets.to_i
p = gets.chomp.split(" ").map(&:to_i)

sorted = p.sort
dif = 0
for i in 0..n-1
  dif += 1 if p[i] != sorted[i]
end
if dif <= 2
  puts "YES"
else
  puts "NO"
end