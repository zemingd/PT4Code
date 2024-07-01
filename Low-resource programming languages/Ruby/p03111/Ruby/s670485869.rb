n,a,b,c=gets.split.map &:to_i
l=(1..n).map{gets.to_i}
mp_m=43872038723
for bit in 0...4**n
    s=0
    t=0
    u=0
    mp=0
    bit.to_s(4).rjust(n,"0").split("").map(&:to_i).each_with_index{|e,i|
        if e==0
            mp+=10 if s>0
            s+=l[i]
        elsif e==1
            mp+=10 if t>0
            t+=l[i]
        elsif e==2
            mp+=10 if u>0
            u+=l[i]
        end
    }
    if s*t*u!=0
        mp_m=[mp_m,mp+(a-s).abs+(b-t).abs+(c-u).abs].min
    end
end
p mp_m