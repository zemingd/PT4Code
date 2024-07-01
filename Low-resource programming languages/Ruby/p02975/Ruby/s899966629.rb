# frozen_string_literal: true

hat_num = gets.to_i

hats = gets.split(' ').map(&:to_i)

puts hats.permutation(hat_num).any? { |hats_a|
  hats_a.each_with_index.all? { |hat, idx|
    hat_a = hats_a[idx - 1]
    hat_b = idx == (hat_num - 1) ? hats_a[0] : hats_a[idx + 1]
    hat == hat_a ^ hat_b
  }
} ? 'Yes' : 'No'
