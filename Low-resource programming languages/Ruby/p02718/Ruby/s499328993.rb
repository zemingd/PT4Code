N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

sum = As.inject(:+)
cond_num = sum.to_f / (4.to_f * M.to_f)
res = 0

As.each do |target|
  res += 1 if cond_num <= target 
end

puts (res >= M) ? 'Yes' : 'No'
