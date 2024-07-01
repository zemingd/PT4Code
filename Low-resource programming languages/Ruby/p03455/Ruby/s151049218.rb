# 整数の入力
a = gets.to_i
# スペース区切りの整数の入力
b,c=gets.split(" ").map(&:to_i);
# 文字列の入力
s = gets
# 出力
puts("#{a+b+c} #{s}")
