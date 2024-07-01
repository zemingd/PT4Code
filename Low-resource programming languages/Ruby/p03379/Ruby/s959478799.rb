n=gets.to_i
xs=gets.split.map(&:to_i)
newxs=xs.sort
median1=newxs[n/2]
median2=newxs[n/2-1]
n.times{|i| puts xs[i]<median1 ? median1:median2}
