# frozen_string_literal: true

a, b = gets.strip.split

square = (1..100).map { |n| n * n }

num = (a + b).to_i

puts square.include?(num) ? 'Yes' : 'No'
