a, b = gets.strip.split.map(&:to_i)

square = (1..100).map { |n| n * n }

puts square.include?(a * b) ? "Yes" : "No"