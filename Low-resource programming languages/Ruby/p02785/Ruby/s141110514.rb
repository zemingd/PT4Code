# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).sort_by(&:-@)

if n <= k
  puts 0
else
  puts h[k..-1].reduce(:+)
end
