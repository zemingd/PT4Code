# frozen_string_literal: true

n, _m = gets.split.map(&:to_i)
h = Hash.new(0)
n.times do
  gets.split.map(&:to_i)[1..-1].each { |i| h[i] += 1 }
end

puts h.values.count { |i| i == n }