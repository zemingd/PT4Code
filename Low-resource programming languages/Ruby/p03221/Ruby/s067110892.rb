n,m=gets.split.map &:to_i
h=(0..n).map{[]}
(1..m).each{|i|
    p,y=gets.split.map &:to_i
    h[p] << [y,i]
}
res=[]
(1..n).each{|i| h[i].sort.each.with_index(1){|(_, k), j| res[k-1]="%06d%06d" % [i, j]}}
puts res*$/
