a,b = gets.split.map(&:to_i)
c = a+b
if c % 2 == 0
  puts (a+b)/2
else
  puts "IMPOSSIBLE"
end
