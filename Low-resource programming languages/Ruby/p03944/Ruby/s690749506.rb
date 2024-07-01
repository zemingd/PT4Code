# frozen_string_literal: true

w, h, n = gets.split.map(&:to_i)
x, y, a = Array.new(n) { gets.split.map(&:to_i) }.transpose

l = x.select.with_index { |_, i| a[i] == 1 }.max || 0
r = x.select.with_index { |_, i| a[i] == 2 }.min || w
d = y.select.with_index { |_, i| a[i] == 3 }.max || 0
u = y.select.with_index { |_, i| a[i] == 4 }.min || h

puts l > r || d > u ? 0 : (r - l) * (u - d)