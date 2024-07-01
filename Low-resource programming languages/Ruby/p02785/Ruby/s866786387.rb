(n,k) = gets.chomp.split(" ")
n = n.to_i
k = k.to_i
h = gets.split(" ").map!{|i | i.to_i} 
if n-k <= 0
  sum = 0
else
  h = h.sort.slice(0..(n-k-1))
  sum = h.inject(:+)
end
puts sum