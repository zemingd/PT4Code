N,K=gets.split.map(&:to_i)
A=gets.split.map(&:to_i)
h=Hash.new{0}
A.each{|a|
    h[a]+=1
}
k=h.keys.sort_by{|k|h[k]}
r=0
(k.size-K).times{|i|
    r+=h[k[i]]
}
puts r
