N = gets.to_i
nums = Hash.new(0)

N.times do
  nums[gets.chomp] += 1
end

puts nums.select {|k, v| v.odd? }.count