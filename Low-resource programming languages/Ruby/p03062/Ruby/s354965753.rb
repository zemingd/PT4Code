#!/usr/bin/env ruby

n = STDIN.gets.chomp.to_i
nums = STDIN.gets.chomp.split(' ').map &:to_i

0.upto(n-2).each do |i|
  if (nums[i] + nums[i+1]) < -1 * (nums[i] + nums[i+1])
    nums[i] *= -1
    nums[i+1] *= -1
  elsif (nums[i] + nums[i+1]) == -1 * (nums[i] + nums[i+1])
    if nums[i] < 0
      nums[i] *= -1
      nums[i+1] *= -1
    end
  end
end

puts nums.inject(0){|s, i| s+i }
