# https://atcoder.jp/contests/abc170/tasks/abc170_c
#require 'pry'

X, N = gets.split.map(&:to_i)
if N == 0
  puts X
else
  ps = gets.split.map(&:to_i)
  min, max = ps.minmax

  s_min = min < 1 ? 1 : min
  e_max = max > 100 ? 100 : max

  ts = (s_min..e_max).to_a - ps

  abses = ts.map do |e|
    (e - X).abs
  end

  #binding.pry

  min_index = abses.index(abses.min)

  ans = min_index ? ts[min_index] : X

  puts ans
end


