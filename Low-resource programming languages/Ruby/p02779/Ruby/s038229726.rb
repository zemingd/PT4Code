_ = gets.to_i
nums = gets.split(' ').map(&:to_i)
puts nums.size == nums.uniq.size ? 'Yes' : 'No'