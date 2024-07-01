# frozen_string_literal: true

n, _ = gets.split.map(&:to_i)
s = []
n.times { s << gets.chomp }

puts s.sort.inject(:+)