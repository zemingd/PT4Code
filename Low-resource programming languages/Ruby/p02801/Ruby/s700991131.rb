#アルファベット順を作る
text = ('a'..'z').to_a

# 入力した文字を何番目の配列か見つける
c = gets
moji = text.index(c)
puts text[moji+1]