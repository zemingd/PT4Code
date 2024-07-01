# 隣り合う要素が逆転してたら交換
def order_adj_elm(i, xs)
  if xs[i] < xs[i-1]
    xs[i-1], xs[i] = xs[i], xs[i-1]
  end
end
xs = 0, *gets.split.map{|s| s.to_i}

order_adj_elm(3, xs)
order_adj_elm(2, xs) # 1番目定まる

order_adj_elm(3, xs) # 2番目

last = xs.length - 1
for i in (1..last)
  print xs[i]
  unless i == last
    print "\s"
  else
    print "\n"
  end
end