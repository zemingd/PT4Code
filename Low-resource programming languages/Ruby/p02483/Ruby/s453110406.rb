# encoding: utf-8

# swapping adjacent elements that are out of order
def order_adj_elm(i, xs)
  if xs[i] < xs[i-1]
    xs[i-1], xs[i] = xs[i], xs[i-1]
  end
end
xs = 0, *gets.split.map{|s| s.to_i}
order_adj_elm(3, xs)
order_adj_elm(2, xs) # 1が左端から1番目

order_adj_elm(3, xs) # 2が2番目

last = xs.length + 1
for i in (1..last)
  print xs[i], "\s" unless i == last 
end