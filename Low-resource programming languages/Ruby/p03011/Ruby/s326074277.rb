nums = gets.chomp.split(' ').map(&:to_i)

puts nums.inject(&:+) - nums.max
