# frozen_string_literal: true

h = gets.to_i
count = 0

while h != 0
  h /= 2
  count = 2 * count + 1
end

puts count