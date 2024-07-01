a,b = gets.chomp.split(" ").map(&:to_i)
dif = a + b
if dif % 2 == 1
  puts "IMPOSSIBLE"
else
  puts dif / 2
end