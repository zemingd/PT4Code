# frozen_string_literal: true

require 'pry'

hat_num = gets.to_i

hats = gets.split(' ').map(&:to_i)

perm_hats =
  if hats.length > 3
    t_hats = hats.permutation(hat_num)
    g = []
    t_hats.each { |hats| t = [hats[0], hats[-1]]; g << t unless g.include?(t)  }
    t_hats.reject { |hats| t = [hats[0], hats[-1]]; g.delete(t) if g.find_index(t) }
  else
    [hats]
  end

puts perm_hats.any? { |hats_a|
  hats_a.each_with_index.all? { |hat, idx|
    hat_a = hats_a[idx - 1]
    hat_b = idx == (hat_num - 1) ? hats_a[0] : hats_a[idx + 1]
    hat == hat_a ^ hat_b
  }
} ? 'Yes' : 'No'