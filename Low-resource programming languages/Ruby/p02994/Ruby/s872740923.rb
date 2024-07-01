n,l=gets.split.map(&:to_i)
p (n-1)*l+n*(n-1)/2-(l<0?(n>l.abs ? l.abs: n-1):0)