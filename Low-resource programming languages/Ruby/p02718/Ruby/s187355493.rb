n, m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i).sort.reverse
sum = nums.reduce(:+)

t = nums[m-1]

puts t >= (sum / (4.0*m)) ? 'Yes' : 'No'
