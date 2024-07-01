#!ruby -na
a,b=$F.map &:to_i
if a==-b
    p 1
elsif a<=b
    if a<0 and a.abs<b.abs
        p b-a.abs+1
    else
        p b-a
    end
else
    p a-b+(a*b==0 ? 1 : 2)
end
