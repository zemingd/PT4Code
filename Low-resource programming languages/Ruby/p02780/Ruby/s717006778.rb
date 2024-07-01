n, k = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)

exps = ps.map do |v|
  v * 0.5 + 0.5
end
 
max = 0
 
i = 0
j = k
memo = exps[i...j].reduce(:+) - exps[j-1]
while j <= ps.size do
  sum = memo + exps[j-1]
  memo = sum - exps[i]
  if sum > max
    max = sum
  end
  i += 1
  j += 1
end
 
puts max