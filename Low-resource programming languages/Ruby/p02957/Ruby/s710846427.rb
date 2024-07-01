# frozen_string_literal: true

a, b = gets.split.map(&:to_i)

c = a + b
if c.odd?
  puts 'IMPOSSIBLE'
else
  puts c / 2
end
