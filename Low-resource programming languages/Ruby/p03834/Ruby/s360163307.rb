# Your code here!
aa=gets().chomp
b=aa.length
cc=aa.unpack("C*")
#puts(aa,cc)
for i in 0..(b-1)
    #puts(i,aa[i],cc[i])
    if cc[i]==44
        cc[i]=32
    end
end

dd=cc.pack("C*")
print(dd)