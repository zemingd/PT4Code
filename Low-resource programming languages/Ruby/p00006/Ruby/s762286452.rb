# 何度やってもPresentation Errorが出ると思ったら改行が行けなかったので.chompで改行削除
# 20文字以内との指定なのでそれ以上は弾くようにした。他の解答例がそのまま返すだけで終わっているのは納得がいかない・・・
# 文字列入力
str = gets.to_s
# 21文字以上は弾いて再入力
while str.length > 21
str = gets.to_s
end
# 逆順出力
puts str.chomp.reverse