n, k = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)

sum = 0
(0..k-1).each do |i|
  sum += p[i]
end
max = sum
if (n>k)
  (0..n-k-1).each do |i|
    sum = sum - p[i] + p[i+k]
    max = sum if max < sum
  end
end
max = (max+k)/2.0
puts max