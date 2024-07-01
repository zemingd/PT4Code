# frozen_string_literal: true

n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
cnt = 0

a.each do |i|
  break if x < i

  x -= i
  cnt += 1
end

if x == 0
  puts cnt
else
  puts cnt == n ? cnt - 1 : cnt
end