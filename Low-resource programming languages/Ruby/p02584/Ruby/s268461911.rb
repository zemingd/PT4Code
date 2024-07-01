x,k,d=gets.split.map &:to_i
x=x.abs
q,r=x.divmod(d)
puts q>=k ? x-k*d : (k-q).even? ? r : d-r