a,b=gets.split.map &:to_i
if a == b then
  puts 0
elsif (a + b) % 2 == 0 then
  puts (a + b) / 2
else
  puts "IMPOSSIBLE"
end