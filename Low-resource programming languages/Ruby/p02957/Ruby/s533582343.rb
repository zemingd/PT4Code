a,b = gets.chomp.split(" ").map(&:to_i)
k = (a + b) / 2

if ((a + b ) % 2 == 0) 
  puts k
  exit
else
  puts "IMPOSSIBLE"
end
