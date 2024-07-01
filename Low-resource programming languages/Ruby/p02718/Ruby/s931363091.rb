# frozen_string_literal: true

N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts(a.filter { |n| n >= a.sum / (4 * M) }.count >= M ? 'Yes' : 'No')
