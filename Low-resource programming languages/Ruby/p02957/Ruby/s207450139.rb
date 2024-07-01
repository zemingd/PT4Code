a, b = gets.chomp.split(" ").map(&:to_i);
#s = gets.chomp

if (a+b)%2 == 0
  puts (a+b)/2
else
  puts "IMPOSSIBLE"
end