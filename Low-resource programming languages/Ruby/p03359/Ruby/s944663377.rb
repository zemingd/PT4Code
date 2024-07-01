# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
count = 0

1.upto(a) do |i|
  1.upto(b) do |j|
    count += 1 if i == j
  end
end

puts count