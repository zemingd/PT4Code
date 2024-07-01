# frozen_string_literal: true

_ = gets
w = gets.split.map(&:to_i)

tmp = w[0] - w[1..-1].inject(:+)
min = tmp.abs

w[1..-2].each do |i|
  tmp += i * 2
  min = tmp.abs if min > tmp.abs
end

puts min