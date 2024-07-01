# frozen_string_literal: true

n = gets.to_i

puts (3..9).flat_map {|digit|
  %w[3 5 7].repeated_permutation(digit).select {|numbers| numbers.uniq.size == 3 }.map {|numbers| numbers.join.to_i }
}.select {|number| number <= n }.size
