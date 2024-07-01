# frozen_string_literal: true

a = Array.new(3) { Array.new(3, 0) }
3.times do |i|
  a[i] = gets.split.map(&:to_i)
end

n = gets.to_i
b = n.times.map { gets.to_i }

hitted = Array.new(3) { Array.new(3, false) }

3.times do |i|
  3.times do |j|
    hitted[i][j] = true if b.any? { |n| n == a[i][j] }
  end
end

transposed = hitted.transpose
ans = 'No'

0.upto(2) do |i|
  ans = 'Yes' if hitted[i].all? || transposed[i].all? || a[i][-i]
end

puts ans
