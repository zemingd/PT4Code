# frozen_string_literal: true

a, b, c, d = gets.split.map(&:to_i)

puts (c.to_f / b).ceil <= (a.to_f / d).ceil ? 'Yes' : 'No'
