# frozen_string_literal: true

# ABC 140 B - Buffet

STDIN.gets

input_a = STDIN.gets.split(' ').map(&:to_i)
input_b = STDIN.gets.split(' ').map(&:to_i)
input_c = STDIN.gets.split(' ').map(&:to_i)

s = input_b.inject(:+)

(0..input_a.length - 2).each do |idx|
  s += input_c[input_a[idx] - 1] if input_a[idx + 1] - input_a[idx] == 1
end

puts s
