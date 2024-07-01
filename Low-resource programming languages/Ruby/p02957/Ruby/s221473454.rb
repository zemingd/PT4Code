a,b = gets.chomp.split(" ").map(&:to_i)
k = (a + b) / 2 
if k.map(&:to_i) === k
  puts k
  exit
else
  puts "IMPOSSIBLE"
end