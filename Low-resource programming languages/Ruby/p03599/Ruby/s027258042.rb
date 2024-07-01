A,B,C,D,E,F=gets.split.map(&:to_i)
max=[A*100,0]
a=0
while a*A*100<=F
    b=0
    while (a*A+b*B)*100<=F
        c=0
        w=(a*A+b*B)*100
        while w+c*C<=F
            break if E*w<c*C*100
            d=0
            while w+c*C+d*D<=F
                s=c*C+d*D
                break if E*w<s*100
                #warn [a,b,c,d,w,s,s.to_f/(w+s)].inspect
                if max[1]*(w+s)<s*max[0]
                    max=[w+s, s]
                    warn max.inspect
                end
                d+=1
            end
            c+=1
        end
        b+=1
    end
    a+=1
end
puts "%d %d" % max
