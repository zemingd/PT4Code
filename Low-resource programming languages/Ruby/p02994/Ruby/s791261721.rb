n,l=gets.split.map &:to_i
s=l*n+n*(n-1)/2
p s - (l>0 ? l : l+n-1<0 ? l+n-1 : 0)