N = gets.chomp.to_i         # 単一整数
S = gets.chomp.to_s         # 文字列。chompを付けないと改行文字がついてくる
ans = 0
i = 0
#ABC判定
loop do
    #繰り返す処理
  moji = S.slice(i, 3)
  if moji == "ABC" then
    ans = ans + 1
  end
  i = i + 1
  if i == N then
    break
  end
end
puts ans