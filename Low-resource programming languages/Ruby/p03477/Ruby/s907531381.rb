# frozen_string_literal: true

A, B, C, D = gets.chomp.split(" ").map { |i| i.to_i }
if A + B == C + D
  puts 'Balanced'
elsif A + B > C + D
  puts 'Left'
elsif A + B < C + D
  puts 'Right'
end
