# frozen_string_literal: true

n, k = gets.split.map &:to_i
p = gets.split.map &:to_i
sum = p[0...k].inject(:+)
temp = sum
(k...n).each do |i|
  temp = temp - p[i-k] + p[i]
  sum = temp if sum < temp
end
puts (sum+k)/2.0
