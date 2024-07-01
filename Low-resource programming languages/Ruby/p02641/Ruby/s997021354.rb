# frozen_string_literal: true

x, n = gets.split.map(&:to_i)

if n.zero?
  puts x
  exit
end

p = gets.split.map(&:to_i)
q = [*0..101] - p
puts q.min_by { |i| (i - x).abs }
