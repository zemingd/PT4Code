# frozen_string_literal: true

hat_num = gets.to_i

hats = gets.split(' ').map(&:to_i)

puts 0 == hats.each_slice(2).reduce(0) { |result, slice| a, b = slice; b == nil ? result ^ a : result ^ (a^b) } ? 'Yes' : 'No'