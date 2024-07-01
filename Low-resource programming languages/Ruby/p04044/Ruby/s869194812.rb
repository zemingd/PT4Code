# frozen_string_literal: true

n, = gets.split.map(&:to_i)
s = []
n.times { s << gets.chomp }

puts s.sort.inject(:+)