s = gets.split.map(&:to_i).sort
if s == [5,5,7]
  puts "YES"
else
  puts "NO"
end