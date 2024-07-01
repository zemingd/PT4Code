N, M = gets.split.map &:to_i
Xs = gets.split.map(&:to_i).sort

Xs_diffs = [*0...(M-1)].map{|i| (Xs[i] - Xs[i + 1]).abs }.sort

p Xs_diffs.take([M - N, 0].max).inject(0, :+)
