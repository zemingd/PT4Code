# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
l = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
count = 0

1.upto(a) do |i|
  d = b < l[i - 1] ? b : l[i - 1]
  1.upto(d) do |j|
    count += 1 if i == j
  end
end

puts count