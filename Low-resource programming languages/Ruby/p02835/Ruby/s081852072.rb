# 3 個の整数 A1, A2, A3 が与えられます。
# A1 + A2 + A3 が 22 以上なら bust、
# 21 以下なら win を出力してください。

# 3個の整数を取得
input = gets.chomp.split
a1 = input[0].to_i
a2 = input[1].to_i
a3 = input[2].to_i

# 結果を格納する変数を宣言
result = String.new

# 3個の整数の和を計算
if a1 + a2 + a3 >= 22
  result = "bust"
else
  result = "win"
end

# 結果を出力
puts result