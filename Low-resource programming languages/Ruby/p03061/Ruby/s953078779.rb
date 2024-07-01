#!/usr/bin/env ruby

n = gets.to_i
nums = gets.split(' ').map &:to_i

l_gcd_cache = []
r_gcd_cache = []

l_gcd_cache[0] = 0
1.upto(n-1).each do |i|
  l_gcd_cache[i] = l_gcd_cache[i-1].gcd(nums[i-1])
end

r_gcd_cache[n-1] = 0
(n-2).downto(0).each do |i|
  r_gcd_cache[i] =  r_gcd_cache[i+1].gcd(nums[i+1])
end

puts 0.upto(n-1).map{|i| l_gcd_cache[i].gcd(r_gcd_cache[i]) }.max
