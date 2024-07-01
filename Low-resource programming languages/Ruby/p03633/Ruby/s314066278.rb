N = gets.to_i

nums = []

N.times do
  nums << gets.to_i
end

puts nums.inject(&:lcm)
