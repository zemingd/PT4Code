# frozen_string_literal: true

a, b, x = gets.split.map(&:to_i)

if a <= x && x <= a + b
  puts :YES
else
  puts :NO
end