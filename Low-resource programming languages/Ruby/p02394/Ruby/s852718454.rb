# frozen_string_literal: true

w, h, x, y, r = gets.split(' ').map(&:to_i)

# x-axis
x_edge = 0..w
x_include = x_edge.include?(x-r) && x_edge.include?(x+r)

# y-axis
y_edge = 0..h
y_include = y_edge.include?(y-r) && y_edge.include?(y+r)

puts x_include && y_include ? :Yes : :No
