a,b = gets.split.map(&:to_i)
if (a-b).abs % 2 == 0
  puts (a-((a-b).abs / 2)).abs
else
  puts "IMPOSSIBLE"
end