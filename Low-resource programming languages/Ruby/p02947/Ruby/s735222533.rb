# frozen_string_literal: true

n = gets.to_i
h = Hash.new(0)
n.times { h[gets.chomp.chars.sort.join] += 1 }

puts h.values.map { |i| [*0..(i - 1)].inject(:+) }.inject(:+)