# frozen_string_literal: true

h = gets.to_i

n = (Math.log2 h).ceil
n += 1 if (h & (h - 1)).zero?
puts 2**n - 1
