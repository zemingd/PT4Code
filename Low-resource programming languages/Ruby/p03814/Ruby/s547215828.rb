# frozen_string_literal: true

s = gets.chomp

puts s.size - s.index('A') - s.reverse.index('Z')