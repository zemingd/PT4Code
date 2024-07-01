require 'set'
N = gets.chomp.to_i
nums = (N-1).times.map { gets.chomp.split(' ').map(&:to_i ) }

evens = nums.select { |*,num| num.even? }.flat_map { |a, b, *| [a, b] }.to_set
odds = nums.select { |*,num| num.odd? }.flat_map { |a, b, *| [a, b] }.to_set - evens

odds_colors = odds.map { |n| [n, '1'] }
evens_colors = evens.map { |n| [n, '0'] }
(odds_colors + evens_colors).sort.each { |*, color| puts color }