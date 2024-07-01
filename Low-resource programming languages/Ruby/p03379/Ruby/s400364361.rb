n=gets.to_i
x=gets.split.map(&:to_i)
n.times{|i|
  a=eval(x.to_s)
  a.delete_at(i)
  p a[n/2-1]
}