# frozen_string_literal: true

_  = gets
as = gets.strip.split

puts as.size == as.uniq.size ? 'Yes' : 'No'
