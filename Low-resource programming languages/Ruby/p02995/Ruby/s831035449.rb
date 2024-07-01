
def gcd(n,m)
  if(n > m)
    nn = n
    mm = m
  else
    nn = m
    mm = n
  end
#  printf("%d\n",mm)
  if(nn % mm == 0)
    return mm
  else
    return gcd(mm,nn%mm)
  end
      
end

arr = gets.split.map(&:to_i)
a = arr[0]
b = arr[1]
c = arr[2]
d = arr[3]
#printf("%d\n",a)
#printf("%d\n",b)
#printf("%d\n",c)
#printf("%d\n",d)

gc = gcd(c,d)
lc = (c*d)/gc;

ac = (a-1)/c;
ad = (a-1)/d;
bc = b/c;
bd = b/d;
acd = (a-1)/lc;
bcd = b/lc;

ret = (b-a+1)-(bc-ac)-(bd-ad) + (bcd-acd)
#print(a+b)
printf("%d\n",ret)
