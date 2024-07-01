l = gets.split.map(&:to_i)

if l.count(5) == 2 && l.count(7)
  puts "YES"
else
  puts "NO"
end
