a,b,c,k=gets.split.map(&:to_i)
l=[[1]*a,[0]*b,[-1]*c].flatten
p l[0,k].sum
