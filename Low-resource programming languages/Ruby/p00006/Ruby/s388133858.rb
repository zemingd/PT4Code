# 文字列入力
str = gets.to_s.chomp
# 21文字以上は弾いて再入力
while str.length > 21
str = gets.to_s.chomp
end
# 逆順出力
puts str.chomp.reverse