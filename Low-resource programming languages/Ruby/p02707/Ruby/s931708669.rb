# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)
h = Hash.new(0)

1.upto(n) { |i| h[i] = 0 }
a.each { |a| h[a] += 1 }

puts h.values