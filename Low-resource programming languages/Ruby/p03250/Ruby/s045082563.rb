# frozen_string_literal: true

A, B, C = gets.chomp.split.map(&:to_i)
numbers = [A, B, C]
numbers.sort! { |a, b| b <=> a }
puts 10 * numbers[0] + numbers[1] + numbers[2]
