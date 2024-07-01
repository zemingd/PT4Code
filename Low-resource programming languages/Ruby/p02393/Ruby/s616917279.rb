# -*- coding: utf-8 -*-

# データの数を取得
arr = STDIN.gets.split.map(&:to_i)
# ここから変える
puts arr.sort.join(" ")