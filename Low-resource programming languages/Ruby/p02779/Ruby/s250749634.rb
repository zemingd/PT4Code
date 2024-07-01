# frozen_string_literal: true

n  = gets.strip.to_i
as = gets.strip.split

puts n == as.uniq.size ? 'YES' : 'NO'
