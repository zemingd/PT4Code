# frozen_string_literal: true

_ = gets.to_i
p = gets.split.map(&:to_i)

puts p.each_cons(3).count do |a|
  a[0] < a[1] && a[1] < a[2] || a[0] > a[1] && a[1] > a[2]
end