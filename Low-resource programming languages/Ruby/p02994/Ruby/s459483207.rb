# frozen_string_literal: true

n, l = gets.split.map(&:to_i)

puts (l...(l + n)).sort_by { |e| e.abs }[1..-1].inject(:+)