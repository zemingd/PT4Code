# frozen_string_literal: true

p, q, r = gets.split.map(&:to_i)
puts [p + q, q + r, r + p].min
