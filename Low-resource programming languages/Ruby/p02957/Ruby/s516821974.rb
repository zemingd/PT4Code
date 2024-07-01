a,b=gets.split.map &:to_i
if (a+b).abs%2 != 0
  puts "IMPOSSIBLE"
else
  puts (a+b)/2
end