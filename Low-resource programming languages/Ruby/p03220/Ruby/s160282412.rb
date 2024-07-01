# frozen_string_literal: true

n = gets.to_i
t, a = gets.split.map(&:to_i)
heights = gets.split.map(&:to_i)

diffs = heights.map {|height| t - height * 0.006 }.map {|temperature| (a - temperature).abs }
min_diff = diffs.min
answer = diffs.find_index {|diff| diff == min_diff } + 1

puts answer
