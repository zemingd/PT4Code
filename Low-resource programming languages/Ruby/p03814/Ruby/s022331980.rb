# Your code here!
s=gets.chomp()
ss=s.unpack("C*")
l=s.length()
ans=0
a=200000
z=0

#for i in 0..l-1
#    if ss[i]==65
#        j=i
#        while ss[j]<90
#            j=j+1
#        end
#        b=j-i+1
#        #puts(i,j)
#        if ans<b
#           ans=b
#end
#    end
#end

for i in 0..l-1
    if ss[i]==65&&a>i
        a=i
    end
    if ss[i]==90&&z<i
        z=i
    end
end

puts(z-a+1)