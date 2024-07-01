# すぬけくんは文字列 s の連続した一部分(部分文字列という)を
# 取り出して先頭が A であり末尾が Z であるような文字列を作ることにしました。
# すぬけくんが作ることのできる文字列の最大の長さを求めてください。
# なお，s には先頭が A であり末尾が Z であるような
# 部分文字列が必ず存在することが保証されます。

# 文字列を取得
s = gets.chomp

# 最初のAの位置と、最後のZの位置を格納する変数を宣言
start_position = 0
end_position = 0

# 最初のAの位置を特定
s.length.times do |i|
  if s[i] == "A"
    start_position = i
    break
  end
end

# 最後のZの位置を特定
(s.length - start_position).times do |i|
  if s[i + start_position] == "Z"
    end_position = i + start_position
  end
end

# 結果を出力
puts end_position - start_position + 1