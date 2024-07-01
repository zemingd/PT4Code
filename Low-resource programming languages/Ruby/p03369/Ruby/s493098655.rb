# frozen_string_literal: true

s = gets.chomp

puts 700 + s.chars.count { |c| c == 'o' } * 100