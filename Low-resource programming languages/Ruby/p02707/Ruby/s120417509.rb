# frozen_string_literal: true

n = gets.to_i
a = gets.split.map(&:to_i)

h = Array.new(n) { 0 }

a.each do |e|
  h[e - 1] += 1
end
puts h
