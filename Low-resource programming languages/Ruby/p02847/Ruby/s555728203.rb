# frozen_string_literal: true

s = gets.chomp

w = %w[SUN MON TUE WED THU FRI SAT]

d = w.find_index(s)

puts 7 - d
