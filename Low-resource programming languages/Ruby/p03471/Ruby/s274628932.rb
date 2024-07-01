n,y=gets.split.map(&:to_i)
r=->mnus,k{mnus.map{|mnu|m,n,u=mnu;(0..(m<n/k ?m:n/k)).map{|i|[m-i,n-k*i,[*u,i]]}}.flatten(1)}
puts r[r[[[n,y,[]]],10000],5000].find{|v,w,u|(1000*v==w)&&(break [*u,v])}&.join(' ') || '-1 '*3