a,b = gets.chomp.split(" ").map(&:to_i);
k = (a + b) / 2

if (a - k).abs == (b - k).abs
  puts k
  exit
else
  puts "IMPOSSIBLE"
end