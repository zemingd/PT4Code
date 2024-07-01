n,k = gets.chomp.split(" ").map(&:to_i);
h = gets.chomp.split(" ").map(&:to_i);

h = h.sort.reverse
k.times{
h.shift
 }

if h != nil
  puts h.inject(:+)
else
  puts 0
end