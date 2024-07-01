# frozen_string_literal: true

n, l = gets.split.map(&:to_i)

a = []
min = 1000
n.times do |i|
  v = l + i
  min = v if min.abs > v.abs
  a.push v
end

puts a.reduce(:+) - min
