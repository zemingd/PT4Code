# frozen_string_literal: true

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

(k..(n - 1)).each do |i|
  puts a[i - k] < a[i] ? 'Yes' : 'No'
end
