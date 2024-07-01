# frozen_string_literal: true

n = gets.chomp[-1].to_i

h = {}
h[2] = h[4] = h[5] = h[7] = h[9] = 'hon'
h[0] = h[1] = h[6] = h[8] = 'pon'
h[3] = 'bon'

puts h[n]
