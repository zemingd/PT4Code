# AtCoder 王国では, 5 月 5 日のような月の数と日の数が同じ日を「高橋」と言う.
# 2018 年 1 月 1 日から 2018 年 a 月 b 日までに, 「高橋」は何日あるか.
# ただし, AtCoder 王国ではグレゴリオ暦を利用しているものとする.

input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i

if a <= b
    puts a
else
    puts a - 1
end