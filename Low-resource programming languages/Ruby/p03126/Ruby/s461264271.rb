#!/usr/bin/ruby
#encoding: utf-8

# 配列の共通部分を作る演算"&"を使う場合。

n,m = gets.split.map(&:to_i)
ka = Array.new(n)
(0..n-1).each do |i|
  ka[i] = gets.split.map(&:to_i)
end

inter = ka[0]

(0..n-1).each do |i|
   ka[i].shift
#   p ka[i]

   inter = inter & ka[i]
end

puts inter.size