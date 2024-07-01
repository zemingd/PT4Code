require 'prime'
require "set"
a,b = gets.chomp.split(" ").map(&:to_i)

count = 1
min = a < b ? a : b
sqrt_min = Math.sqrt(min)
arr = Prime.each(min).to_a
arr.each do |i|
  break if i > sqrt_min
  p_a = a / i
  p_b = b / i

  if p_a * i == a then
    tmp = b / p_a
    if tmp * p_a == b then
      count += 1
    end
  end

  if p_b * i == b then
    tmp = a / p_b
    if tmp * p_b == a then
      count += 1
    end
  end

  if p_a * i == a && p_b * i == b then
    count += 1
  end
end

puts count
