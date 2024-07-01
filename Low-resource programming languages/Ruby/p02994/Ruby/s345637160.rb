# coding: utf-8

# 入力１行目：4桁の整数(１文字列)
N, L = gets.split.map(&:to_i)

# N個のリンゴの味の総和
a = N*L + (1..N).inject(&:+) - N

puts a - (1..N).map{ |i| (L + i - 1) }.min{|i, j| i.abs <=> j.abs }