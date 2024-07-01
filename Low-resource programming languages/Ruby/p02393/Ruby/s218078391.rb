i=gets.split
a=i[0].to_i
b=i[1].to_i
c=i[2].to_i

if(a>b)
tmp=a
a=b
b=tmp

elsif(b>c)
tmp=b
b=c
c=tmp
end

if(a>b)
tmp=a
a=b
b=tmp
end

printf("%d %d %d\n",a,b,c)