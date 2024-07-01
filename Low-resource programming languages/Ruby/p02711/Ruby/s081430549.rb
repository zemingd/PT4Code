# frozen_string_literal: true

n = gets.chomp

puts n.chars.any? { |c| c == '7' } ? :Yes : :No