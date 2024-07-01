# frozen_string_literal: true

a1, a2, a3 = gets.split.map(&:to_i)

if a1 + a2 + a3 >= 22
  puts 'bust'
else
  puts 'win'
end
