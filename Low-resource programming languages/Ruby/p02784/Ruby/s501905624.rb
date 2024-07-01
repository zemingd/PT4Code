h, a = gets.strip.split(' ').map(&:to_i)
nums = gets.strip.split(' ').map(&:to_i)

sum = nums.reduce(:+)

answer = h <= sum ? 'Yes' : 'No'
puts answer