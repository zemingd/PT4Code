a,b = gets.chomp.split(" ").map(&:to_i)
if a != b
  puts [a,b].max + [a,b].max - 1
else
  puts a + b
end