N = gets.chomp.to_i               # 単一整数
a = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数を配列にする

ans = 0  #カウンタ
i = 0  #比較用変数

while i < N do
  if a[i].to_i > a[i+1].to_i then
    ans = ans + 1
  else
    #空白
  end
  i = i + 1
end
puts ans