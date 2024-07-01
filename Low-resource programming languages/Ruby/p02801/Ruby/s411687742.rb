#アルファベット順を作る
text = [*'a'..'z']

# 入力した文字を何番目の配列か見つける
puts text[text.index(gets)+1]