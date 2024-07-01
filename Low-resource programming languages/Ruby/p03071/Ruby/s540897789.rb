a,b = gets.split.map &:to_i

if a == b
  puts a + b
else
  puts [a,b].max * 2 - 1
end