# frozen_string_literal: true

x, a = gets.split.map(&:to_i)

if x < a
  puts 0
elsif x >= a
  puts 10
end
