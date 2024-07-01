# frozen_string_literal: true

N, K = gets.chomp.split(' ').map(&:to_i)
A = gets.chomp.split(' ').map(&:to_i)

instance_counts = A.uniq.map { |a| A.count(a) }
instance_counts.sort! { |a, b| b <=> a }

puts N - instance_counts[0..(K - 1)].reduce(:+)
