s = gets.chomp.split('')
count = 0
max = 0
k = 0
while k < s.size
  if /[ACGT]/ =~ s[k] #マッチしたらカウントを増やす
    count += 1
  else #マッチしなかったら
    count = 0 #カウントをリセット
  end
  if max < count #カウントが今までで最大なら
    max = count #回答を更新
  end
  k += 1
end
puts max
