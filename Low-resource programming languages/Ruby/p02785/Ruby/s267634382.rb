n,k = gets.chomp.split(" ").map(&:to_i);
h = gets.chomp.split(" ").map(&:to_i);
 
h = h.sort.reverse
k.times{
h.shift
 }

len = h.length
if len != 0
  puts h.inject(:+)
else
  puts 0
end