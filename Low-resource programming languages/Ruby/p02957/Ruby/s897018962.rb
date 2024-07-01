a,b = gets.chomp.split(" ").map(&:to_i)
k = a + b

if (k % 2 == 0) 
  puts k / 2
  exit
else
  puts "IMPOSSIBLE"
end
