require 'prime'
class Array
  def lcm
    inject(:lcm)
  end

  def gcd
    inject(:gcd)
  end
end

N, M = gets.split(' ').map(&:to_i)
nums = gets.split(' ').map(&:to_i).uniq
# p nums

prm = Prime.prime_division(nums[0])[0][1]
nums.each do |num|
  if prm != Prime.prime_division(num)[0][1]
    puts 0
    exit
  end
end

lcm = nums.lcm
puts lcm
puts (M-lcm.div(2)).div(lcm)+1