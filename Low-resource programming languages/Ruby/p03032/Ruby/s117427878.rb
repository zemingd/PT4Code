n,k=gets.split.map(&:to_i)
v=gets.split.map(&:to_i)

p (0..[n,k].min).map{|a|
  (0..[n-a,k-a].min).map{|b|
    l = (v[0,a]+v[-b,b]).sort
    drop_cnt = k-a-b
    minus_cnt = l.count{|i|i<=0}
    l.drop([drop_cnt,minus_cnt].min).inject(:+)||0
  }.max
}.max