# 英小文字 c が与えられるので、c が母音であるか判定してください。

# 英小文字を取得
word = gets.chomp

# 結果を格納する変数を宣言
result = String.new

# 英小文字が母音かどうか判定
case word
when "a" || "i" || "u" || "e" || "o"
  result = "vowel"
else
  result = "consonant"
end

# 結果を出力
puts result