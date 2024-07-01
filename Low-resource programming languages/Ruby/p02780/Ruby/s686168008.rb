n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)
sum = p.slice(0, k).inject(:+)
sum_max = sum
for i in k...n do
  sum = sum - p[i - k] + p[i]
  sum_max = sum if sum_max < sum
end
puts (sum_max + k).to_f / 2.0
