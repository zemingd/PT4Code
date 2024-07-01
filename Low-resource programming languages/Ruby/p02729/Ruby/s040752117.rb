# frozen_string_literal: true

N, M = gets.split.map(&:to_i)

puts((N * (N - 1) + M * (M - 1)) / 2)