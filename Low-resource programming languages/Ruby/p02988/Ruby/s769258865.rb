# coding: utf-8

# 入力１行目：4桁の整数(１文字列)
n = gets.to_i
p_list = gets.split.map(&:to_i)

counter = 0
p_list.each_cons(3) do |a,b,c|
    counter += 1 if a < b and b < c
    counter += 1 if c < b and b < a
end

puts counter