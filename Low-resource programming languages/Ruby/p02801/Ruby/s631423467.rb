#アルファベット順を作る
text = ('a'..'z').to_a
 
# 奇跡的にうまれた
puts text[text.index(gets.choms)+1]