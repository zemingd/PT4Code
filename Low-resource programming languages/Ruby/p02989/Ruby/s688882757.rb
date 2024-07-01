# coding: utf-8

# 入力１行目：4桁の整数(１文字列)
n = gets.to_i
p_list = gets.split.map(&:to_i)

p_list.sort!

puts p_list[n/2] - p_list[n/2-1]

