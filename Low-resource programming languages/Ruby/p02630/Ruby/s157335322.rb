# frozen_string_literal: true

N = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)

number_count = Array.new(100000, 0)

array.each do |num|
  number_count[num - 1] += 1
end

Q = gets.chomp.to_i

total = array.sum
Q.times do
  b, c = gets.chomp.split.map(&:to_i)

  b_count = number_count[b - 1]
  total = (total - (b - c) * b_count)
  puts total

  number_count[b - 1] = 0
  number_count[c - 1] += b_count
end
