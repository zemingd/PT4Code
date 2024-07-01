a, b = gets.split.map(&:to_i)
avg = (a+b)/2.0

if avg == avg.to_i
  puts avg.to_i
else
  puts "IMPOSSIBLE"
end