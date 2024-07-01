# frozen_string_literal: true

n = gets.to_i
w = gets.split.map(&:to_i)
left = w[0]
right = w.inject(:+) - w[0]
ans = (left - right).abs
(1..n - 2).each do |i|
  left += w[i]
  right -= w[i]
  tmp = (left - right).abs
  ans = tmp if ans > tmp
end
puts ans
