#gets.splitで空白で区切って配列にする.
#mapで配列を返す.
#to_iで文字列を整数に変換する
a, b = gets.split.map(&:to_i)

puts a * b
