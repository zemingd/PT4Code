n = gets.chomp.split.map(&:to_i)
i = n[0] * 100 + n[1] * 10 + n[2]
if i % 4 == 0
  puts "YES"
else
  puts "NO"
end