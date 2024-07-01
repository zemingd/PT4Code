# frozen_string_literal: true

N = gets.chomp.to_i

count = (0..(N - 1)).to_a.inject(&:+)

p count