# frozen_string_literal: true

h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

s = a.reduce(:+)

puts s >= h ? 'Yes' : 'No'
