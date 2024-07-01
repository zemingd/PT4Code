# coding: utf-8
S = gets
K = gets

# 頭からみて1以外の数字になる文字が答え
puts S.gsub("1", "")[0]
