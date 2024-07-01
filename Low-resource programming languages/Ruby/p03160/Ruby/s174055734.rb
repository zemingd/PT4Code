#!/usr/bin/ruby
#encoding: utf-8

# 配るDPで書く
# a3.rb の 「if i != n-2」の条件分岐を無くしたver
# dpについて、最初からに要素数の大きい配列を
# hについては、+[0]して１つだけ大きい要素とする。
# 作ってしまえばよい。

n = gets.to_i
h = gets.split.map(&:to_i)+[0]

dp = Array.new(10010,1e9.to_i)

#p h

dp[0] = 0

(0..n-2).each do |i|
  dp[i+1] = [dp[i+1] , dp[i] + (h[i+1] - h[i]).abs].min
  dp[i+2] = [dp[i+2] , dp[i] + (h[i+2] - h[i]).abs].min
end

puts dp[n-1]