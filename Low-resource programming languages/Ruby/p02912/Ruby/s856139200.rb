n,m = gets.split.map(&:to_i)
nums = gets.split.map(&:to_i)

m.times do |i|
  nums.sort!.reverse!
  nums[0] /= 2
end

puts nums.inject(:+)