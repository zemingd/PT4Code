a,b,c,d,e,f=gets.split.map &:to_i
res=[]
for i in 0..30
    for j in 0..30
        next if i==0 && j==0
        next if f<w=100*a*i+100*b*j
        k=0
        while w+c*k<=f && (100+e)*(c*k)<=e*(w+c*k)
            l=0
            while w+c*k+d*l<=f && (100+e)*(c*k+d*l)<=e*(w+c*k+d*l)
                s=c*k+d*l
                res<<[w+s, s]
                l+=1
            end
            k+=1
        end
    end
end
puts res.sort_by{|w, s|[s.to_r/w, -w]}[-1]*' '
