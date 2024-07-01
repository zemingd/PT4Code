# https://atcoder.jp/contests/abc132/tasks/abc132_c



N = gets.to_i
ds = gets.split.map(&:to_i).sort

median = (ds[N / 2 - 1] + ds[N / 2]) / 2.to_f # N.even? # => true

minimum_median_index = ds.bsearch_index { |x| x >= median }

puts minimum_median_index == N / 2 ? ds[N / 2] - ds[N / 2 - 1] : 0
