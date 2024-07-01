# https://atcoder.jp/contests/abc106/tasks/abc106_b

require 'prime'

N = gets.to_i

ps = Prime.take_while { |i| i < N }.drop(1)
ans = ps.combination(3).map { |a, b, c| a * b * c }.count { |m| m <= N }

puts ans
