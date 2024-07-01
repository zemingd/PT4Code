# https://atcoder.jp/contests/abc149/tasks/abc149_c

require 'prime'

X = gets.to_i

puts Prime.find { |p| p >= X }
