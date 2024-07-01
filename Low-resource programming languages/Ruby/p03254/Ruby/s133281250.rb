# frozen_string_literal: true

_, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
cnt = 0

a.each do |i|
  break if x < i

  x -= i
  cnt += 1
end

puts x == 0 ? cnt : [cnt - 1, 0].max