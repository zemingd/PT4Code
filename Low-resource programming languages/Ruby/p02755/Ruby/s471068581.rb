# frozen_string_literal: true

# n = gets.to_i
a, b = gets.split.map(&:to_i)

x1 = a / 0.08
x2 = b / 0.1
ans = -1
[x1, x2].min.floor.upto([x1, x2].max.floor) do |x|
  ans = x if (x * 0.08).floor == a && (x * 0.1).floor == b
end

puts ans
