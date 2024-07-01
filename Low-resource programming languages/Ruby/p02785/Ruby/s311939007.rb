n,k = gets.chomp.split(" ").map(&:to_i);
h = gets.chomp.split(" ").map(&:to_i);

h = h.sort.reverse
k.times{
h.shift
 }

ans = 0
len = h.length
len.times{ |x|
  ans += h[x-1]
 }
if len != 0
  puts ans
else
  puts 0
end