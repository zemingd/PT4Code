l,r=gets.split.map(&:to_i)
a=(r-l)/2019
r=r-(a*2019)
res=(l...r).map { |e1|
  (e1+1..r).map { |e2|
    (e1*e2)%2019
  }.min
}.min

p res.to_i
