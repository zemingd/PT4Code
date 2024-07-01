# frozen_string_literal: true

N = gets.to_i
A = gets.split.map(&:to_i)

list = Array.new(N) { 0 }
A.map(&:pred).each { |i| list[i] += 1 }

count = 0

list.each do |i|
  count += i * (i - 1) if i > 1
end

N.times do |i|
  puts (count - 2 * (list[A[i] - 1]) + 2) / 2
end