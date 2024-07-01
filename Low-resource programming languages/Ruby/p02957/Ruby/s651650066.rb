a, b = gets.chomp.split(" ").map(&:to_i) 
ans = a + b
if ans % 2 == 0
  puts ans / 2
else
  puts "IMPOSSIBLE"
end
