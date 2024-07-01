# frozen_string_literal: true

_, m = gets.split.map(&:to_i)
l, r = Array.new(m) { gets.split.map(&:to_i) }.transpose
upper = r.min
lower = l.max

puts upper < lower ? 0 : upper - lower + 1