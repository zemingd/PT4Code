x,k,d = gets.chomp.split(' ').map(&:to_i)
flag = ""
if x > 0
  # if x - (d * k) >= 0 #kが大きく、dが小さい時対策
  if x - (d * (k/2)) >= 0  && x - (d * (k+2)/2)) >= 0#kが大きく、dが小さい時対策
    puts x - (d * k)
    flag = "ok"
  end
elsif x < 0
  if x + (d * (k/2)) <= 0 && x + (d * ((k+2)/2)) <= 0#kが大きく、dが小さい時対策
    puts (x + (d * k)).abs
    flag = "ok"
  end
end
i = 0
while i < k
  if (x - d).abs <= (x + d).abs #dを引いたほうが近づくとき、
    x = x - d #それを改めてxとする
    if x <= 0 && x + d > 0#符号を跨いでいたなら、
      cand = [x.abs, x+d] #その前後が候補となる。配列の第一要素が、i回目の操作の結果であることに注意する。
      # puts "break!+→-"
      # puts cand
      # puts "===="
      break
    end
  else
    x = x + d
    if x >= 0 && x - d < 0
      cand = [x,(x-d).abs]
      # puts "break!-→+"
      # puts cand
      # puts "===="
      break
    end
  end
  i += 1
end
if flag != "ok"
  if i == k
    puts x.abs
  else
    if (k - i) % 2 == 1
      # puts "sign"
      puts cand[0]
    else
      # puts "sing"
      puts cand[1]
    end
  end
end