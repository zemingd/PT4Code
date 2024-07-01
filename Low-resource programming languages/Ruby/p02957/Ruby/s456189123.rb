A,B = gets.strip.split.map(&:to_i)
if (A+B)%2==0
  puts (A+B)/2
else
  puts "IMPOSSIBLE"
end