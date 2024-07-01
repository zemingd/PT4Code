n, k = gets.split.map(&:to_i)
p = gets.split.map{|i| (i.to_f + 1) / 2}
max = 0
for i in 0..n-k
  sum = p[i,k].inject(:+)
  max = sum if max < sum
end
puts max