# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

x1 = a / 0.08
x2 = b / 0.1
ans = -1
[x1, x2].min.floor.upto([(a + 1) / 0.08, (b + 1) / 0.01].max.floor) do |x|
  if (x * 0.08).floor == a && (x * 0.1).floor == b
    ans = x
    break
  end
end

puts ans
