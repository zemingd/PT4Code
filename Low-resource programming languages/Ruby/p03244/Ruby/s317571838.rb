# ちょうど2種類=>出来合いの要素数が一番多いほうがいい
# 偶数番目の数と奇数番目の数は別の処理で数えられる
n = gets.to_i
datas = gets.split(" ").map{|nn|nn.to_i}
need = 0
if (datas.count(datas[0]) == n)
  need = n / 2
else
gusus = []
0.step(n-1,2) do|i|
  gusus << datas[i]
end
uniqgusus = gusus.uniq
co = 0
gusumax = 0
uniqgusus.each do|num|
  co = gusus.count(num)
  if co > gusumax
    gusumax = co
  end
end
need += n/2 - gusumax

kisus = []
1.step(n-1,2) do|i|
  kisus << datas[i]
end
uniqkisus = kisus.uniq
co = 0
kisumax = 0
uniqkisus.each do|num|
  co = kisus.count(num)
  if co > kisumax
    kisumax = co
  end
end
need += n/2 - kisumax
end
puts need.to_s