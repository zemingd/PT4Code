n=gets.to_i
d=gets.split.map(&:to_i)
sum = 0
(0..n).each do |i|
  (0..n-i).each do |j|
   sum += d[i]*d[j]
 end
end
print sum
