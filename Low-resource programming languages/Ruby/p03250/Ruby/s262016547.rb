# frozen_string_literal: true

numbers = gets.split.map(&:to_i).sort

puts numbers[-1] * 10 + numbers[0...-1].inject(:+)
