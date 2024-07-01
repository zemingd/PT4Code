n, k = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i)
sum = []
(0..n-k).each do |i|
  sum.push(nums[i...i+k].inject(:+))
end
start = sum.index(sum.max)
max_sum = 0
(start...start+k).each do |j|
  max_sum += (1 + nums[j]).to_f/2
end
puts max_sum
