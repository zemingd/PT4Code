# H 行 W 列の白色のマス目があります。
# あなたは h 個の行と w 個の列を選び、
# 選んだ行または列に含まれるマス目を全て黒色で塗りつぶします。
# 白色のマス目はいくつ残るでしょうか。
# なお、残る白色のマス目の数は行や列の選び方によらないことが証明できます。

input_line_1 = gets.chomp.split
H = input_line_1[0].to_i
W = input_line_1[1].to_i

input_line_2 = gets.chomp.split
h = input_line_2[0].to_i
w = input_line_2[1].to_i

puts (H * W) - ((h * W) + (w * (H - h)))