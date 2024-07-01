N, A, B = gets.split.map(&:to_i)
small, large = [A, B].sort
dist = large - small
puts dist.even? ? dist / 2 : [N - large, small - 1].min + 1 + ((dist - 1) / 2)