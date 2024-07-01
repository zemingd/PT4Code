# -*- coding: utf-8 -*-

# データの数を取得
n = STDIN.gets
# 数列を取得
arr = STDIN.gets.split.map(&:to_i)
# ここから変える
puts arr.reverse puts arr.join(" ")