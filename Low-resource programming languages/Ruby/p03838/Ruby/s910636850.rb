#!ruby -na
a,b=$F.map &:to_i
if a==-b
    p 1
elsif a<=b
    p b-a
else
    p a-b+(a*b==0 ? 1 : 2)
end
