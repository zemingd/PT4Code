# 入力（数字として使うやつ）
a,b = gets.chomp.split.map(&:to_i)

# 文字を作る
c = a.to_s * b
d = b.to_s * a

# 普通の時のこたえ
s = [c,d]
n = s.sort

#もじが同じだった時の処理
if a != b
  puts n.min
else
  puts c
end