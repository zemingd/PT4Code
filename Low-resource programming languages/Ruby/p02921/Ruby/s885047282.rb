# frozen_string_literal: true

S = gets.chomp
T = gets.chomp

puts 3.times.count { |i| S[i] == T[i] }