# 文字列の入力
S = gets.chomp

ans = 0

len = S.length

for i in 0..S.length - 1 do
  if S[i] == "+"
    ans += 1
  end
  if S[i] == "-"
    ans -= 1
  end  
end
# 出力
print(ans)

