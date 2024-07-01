# frozen_string_literal: true

a, b, c, k = gets.split.map(&:to_i)

if a + b >= k
  puts [k, a].min
else
  puts a - (k - a - b)
end
