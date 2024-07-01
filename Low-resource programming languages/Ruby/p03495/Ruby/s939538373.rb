_n,k=gets.split.map(&:to_i)
ary=gets.split.map(&:to_i).group_by(&:itself).map{|k,v|[k,v.count]}.to_h.values.sort
m=0
m+=ary.shift while ary.size>k
p m