# frozen_string_literal: true

a, b = gets.split(' ').map(&:to_i)

count = 0
(a..b).each do |i|
  arr_i = i.to_s.split('').map(&:to_i)
  count += 1 if arr_i[0] == arr_i[4] && arr_i[1] == arr_i[3]
end

puts count
