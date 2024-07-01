n, k = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i)
sum = []
(0..n-k).each do |i|
  sum.push(nums[i...i+k].inject(:+))
end
max_sum = 0
(sum.index(sum.max)...sum.index(sum.max)+k).each do |j|
  max_num =nums[j]
  (1..max_num).each do |k|
    max_sum += k/max_num.to_f
  end
end
puts max_sum