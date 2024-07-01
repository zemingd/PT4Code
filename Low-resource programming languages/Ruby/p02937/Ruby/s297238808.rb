s = gets.chomp
t = gets.chomp


lidx = 0
found = true
lgt = 0
strCnt = 0
# 一周して文字が見つからなかったら終了
t.chars do |c|
  idx = s.index(c, lidx)
  if idx
    if idx == 0
      lgt += 1
    end
    lgt += idx
    lidx = idx
  else
    strCnt += 1 # 文字列数の累計
    idx = s.index(c, 0) # 次はまた0から走査
    lgt = strCnt * s.length # 見つからなかったら文字列数分の長さを入れる
    if idx
      if idx == 0
        lgt += 1
      end
      lgt += idx
      lidx = idx
    else
      found = false
      break
    end
  end
end

if found
  puts lgt
else
  puts (-1)
end