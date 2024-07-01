# frozen_string_literal: true

a, b, c = gets.split.map(&:to_i)

if c - a - b <= 0
  puts 'No'
  exit
end
puts ((c - a - b)**2 - 4 * a * b).positive? ? 'Yes' : 'No'
