N,A,B,C=gets.split.map &:to_i
L=N.times.map{gets.to_i}.sort.reverse
def get_all_comb(n,lst)
    (2**n).times.map{|i| 
        s=i.to_s(2).rjust(n,"0").chars
        n.times.map{|j|
            lst[j] if s[j]=="1"
        }.select{|j| j!=nil}
    }.select{|ls| ls!=[]}
end
def ac2bestA(l,a,ac)
    ma=a
    ma_l=[]
    ac.each.map{|ls|
        d=(ls.size-1)*10+(ls.inject(:+)-a).abs
        if ma>d then
            ma=d
            ma_l=ls
        end
    }
    return ma,ma_l
end
def get_best(n,l,a,b,c)
    ls=l.dup
    ac = get_all_comb(n,ls)
    ma,ma_l=ac2bestA(l,a,ac)
    ma_l.each{|i| ls.delete(i)}
    ac = get_all_comb(n,ls)
    mb,mb_l=ac2bestA(ls,b,ac)
    mb_l.each{|i| ls.delete(i)}
    ac = get_all_comb(n,ls)
    mc,mc_l=ac2bestA(ls,c,ac)
    #mc_l.each{|i| ls.delete(i)}
    #p [ma_l,mb_l,mc_l]
    return  (mc_l!=[] && mb_l!=[] && ma_l!=[]) ? ma+mb+mc : a+b+c
end
p [[A,B,C],[A,C,B],[B,A,C],[B,C,A],[C,A,B],[C,B,A]].map{|a,b,c|
    get_best(N,L,a,b,c)
}.min