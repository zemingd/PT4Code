h,_ = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i)
puts h <= nums.inject(:+) ? 'Yes' : 'No'