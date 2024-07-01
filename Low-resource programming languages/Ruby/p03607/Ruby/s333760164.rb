a={}
gets.to_i.times{a[n=gets.to_i] ? a[n]=p : a[n]=1}
p a.values.count(1)
