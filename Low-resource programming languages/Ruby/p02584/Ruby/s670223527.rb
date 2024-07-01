x,k,d = gets.chomp.split(' ').map(&:to_i)
i = 0
flag = ""
if x > 0
  if x - (d * k) >= 0 #kが大きく、dが小さい時対策
    puts x - (d * k)
    flag = "ok"
  end
elsif x < 0
  if x + (d * k) <= 0 #kが大きく、dが小さい時対策
    puts x + (d * k)
    flag = "ok"
  end
end
while i < k
  if (x - d).abs < (x + d).abs #dを引いたほうが近づくとき、
    x = x - d #それを改めてxとする
    if x <= 0 && x + d > 0#符号を跨いだら
      cand = [x.abs, x+d] #その結果か、直前が候補となる。
      break
    end
  else
    x = x + d
    if x >= 0 && x - d < 0
      cand = [x,(x-d).abs]
      break
    end
  end
  i += 1
end
if flag != "ok"
  if i == k
    puts x.abs
  else
    if k - i % 2 == 0
      puts cand[0]
    else
      puts cand[1]
    end
  end
end