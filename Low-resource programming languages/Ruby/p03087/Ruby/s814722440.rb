N,Q=gets.split.map &:to_i
S=gets.chomp
m=[]
(0..(N-2)).each{|i|
    if S[i]=='A' && S[i+1]=='C'
        m << i+1
    end
}
#p m
(0...Q).each{|i|
    l,r=gets.split.map &:to_i
    li=m.bsearch_index{|x| x>=l}
    ri=m.bsearch_index{|x| x>=r}
    if li==nil
        li=m.size
    end
    if ri ==nil
        ri=m.size
    end
    #p [li, ri]
    puts (m[ri-1]==r ? ri-li-1 : ri-li) 
}