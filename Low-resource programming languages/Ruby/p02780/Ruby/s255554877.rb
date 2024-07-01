n, k = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i)
sum = []

(0..n-k).each do |i|
  sum.push(nums[i..i+k-1].inject(:+))
end

start = sum.index(sum.max)

max_sum = 0
(start..start+k-1).each do |j|
  max_num =nums[j]
  (1..max_num).each do |k|
    max_sum += k.to_f/max_num
  end
end

puts max_sum