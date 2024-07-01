n,k=gets.split.map(&:to_i)
v=gets.split.map(&:to_i)

p (0..[n,k].min).map{|a|
  (0..[n-a,k-a].min).map{|b|
    l = (v[0,a]+v[-b,b]).sort
    drop_cnt = k-a-b
    l.drop_while{|i|
      (i<=0) && ((drop_cnt-=1)>=0)
    }.inject(:+)||0
  }.max
}.max