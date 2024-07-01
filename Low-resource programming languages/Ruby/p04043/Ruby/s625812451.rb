x = gets.split.map &:to_i
if x.count(5) == 2 and x.count(7) == 1
  puts "YES"
else
  puts "NO"
end
