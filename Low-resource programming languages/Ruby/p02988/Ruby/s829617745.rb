# frozen_string_literal: true

n = gets.to_i
p = gets.split.map(&:to_i)

count = 0
2.upto(n - 1) do |i|
  min = [p[i - 1], p[i - 2], p[i]].min
  max = [p[i - 1], p[i - 2], p[i]].max
  count += 1 if p[i - 1] != min && p[i - 1] != max
end
puts count
