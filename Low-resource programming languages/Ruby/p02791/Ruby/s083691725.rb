n = gets.strip.to_i
nums = gets.strip.split(" ").map(&:to_i)
puts nums.select.with_index {|n, i| nums[0..i].min >= n}.count