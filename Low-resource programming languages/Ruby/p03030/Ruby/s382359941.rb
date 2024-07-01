# frozen_string_literal: true

n = gets.to_i
line = n.times.map { |i| gets.split << (i + 1) }

puts line.sort_by { |l| [l[0], -l[1].to_i] }.map { |e| e[2] }