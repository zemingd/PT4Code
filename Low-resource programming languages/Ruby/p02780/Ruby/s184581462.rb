# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
p = gets.split.map(&:to_i)

sum = p[0..(k - 1)].reduce(:+)
max = sum
max_i = 0

(1..(n - k)).each do |i|
  sum -= p[i - 1]
  sum += p[k - 1 + i]
  if max < sum
    max = sum
    max_i = i
  end
end

puts p[max_i..(max_i + k - 1)].map { |e| (e + 1)/2.0 }.reduce(:+)
