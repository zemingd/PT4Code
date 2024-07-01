# frozen_string_literal: true

input_a, input_b, input_c = STDIN.gets.split.map(&:to_i)

puts input_c - (input_a - input_b)