n,k = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
x = 0
h = h.sort.reverse
for i in 0..n-1 do
  break if n <= k
  x += h[i] if i>=k
end
print x