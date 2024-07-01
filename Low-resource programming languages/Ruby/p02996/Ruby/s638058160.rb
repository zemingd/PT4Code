# frozen_string_literal: true

n = gets.to_i
a, b = Array.new(n) { gets.split.map(&:to_i) }.transpose
t = 0

a.zip(b).sort_by { |_, b| b }.each do |a, b|
  t += a
  if t > b
    puts :No
    exit
  end
end

puts :Yes