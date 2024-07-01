balls = gets.split
nums = gets.split.map(&:to_i)
ball = gets.chomp
nums[balls.index(ball)] -= 1
puts nums.join(" ")