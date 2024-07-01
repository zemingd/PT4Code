i=gets
a=i.split[0].to_i
b=i.split[1].to_i
c=i.split[2].to_i
if (a > b) 
    a, b = b, a
end
if (b > c)
    b, c = c, b
end
if (a > b) 
    a, b = b, a
end
print a," ",b," ",c,"\n"
