# frozen_string_literal: true

hat_num = gets.to_i

hats = gets.split(' ').map(&:to_i)

puts (hat_num / 2) == hats.combination(3).count { |hats| hats[1] == hats[0] ^ hats[2] } ? 'Yes' : 'No'