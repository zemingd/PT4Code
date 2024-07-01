# frozen_string_literal: true

a = gets.split.map(&:to_i)
min = 198

[*0..2].permutation(3).each do |i|
  tmp = (a[i[0]] - a[i[1]]).abs + (a[i[1]] - a[i[2]]).abs
  min = tmp if min > tmp
end

puts min