nums = gets.chomp.split.map(&:to_i)
puts nums.max == nums.min(2).reduce(:+) ? 'Yes' : 'No'