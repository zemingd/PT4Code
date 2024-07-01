# frozen_string_literal: true

hat_num = gets.to_i

hats = gets.split(' ').map(&:to_i)

min = hats[0]
max = hats[-1]

exist_min = (hats - Array(min)).permutation(2).any? { |hats_a| min == hats_a[0] ^ hats_a[1] }
exist_max = (hats - Array(max)).permutation(2).any? { |hats_a| max == hats_a[0] ^ hats_a[1] }

puts (exist_max && exist_min) ? 'Yes' : 'No'
