# https://atc_oder.jp/contests/abc170/tasks/abc170_c
# at_coder_friends test-all B.rb
# require 'pry'

X, N = gets.split.map(&:to_i)
if N == 0
  puts X
else
  ps = gets.split.map(&:to_i)
  min, max = ps.minmax

  s_min = min - 1
  e_max = max + 1

  ts = (s_min..e_max).to_a - ps

  abses = ts.map do |e|
    (e - X).abs
  end

  abses_min = abses.min

  min_indexes = abses.map.with_index do |e, i|
   i if e == abses_min 
  end.compact

  ans = min_indexes.map do |i|
    ts[i]
  end.min

  #p "ans=#{ans}, ts=#{ts}, abses#{abses}, min_indexes=#{min_indexes}"

  puts ans
end


