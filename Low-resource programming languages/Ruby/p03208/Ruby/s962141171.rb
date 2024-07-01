# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
heights = n.times.map { gets.to_i }.sort

min_diff = Float::INFINITY
heights.each_cons(k) {|trees|
  diff = trees[-1] - trees[0]
  min_diff = diff if diff < min_diff
}

puts min_diff
