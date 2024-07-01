# frozen_string_literal: true

s = gets.chomp
min = 642

s.chars.each_cons(3) do |e|
  tmp = (e.inject(:+).to_i - 753).abs
  min = tmp if min > tmp
end

puts min