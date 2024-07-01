a, b = gets.split.map(&:to_i)

if a.odd? != b.odd?
  puts "IMPOSSIBLE"
else
  puts (a + b) / 2 
end
