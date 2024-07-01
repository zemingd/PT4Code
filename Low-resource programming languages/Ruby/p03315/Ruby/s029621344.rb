# frozen_string_literal: true

s = gets.chomp

puts s.chars.map { |c| c == '+' ? 1 : -1 }.inject(:+)