#https://atcoder.jp/contests/abc168
n=gets
x=n[-2].to_i
hon=[2,4,5,7,9]
pon=[0,1,6,8]
bon=[3]
#p n[0],n[-2]#-1には\nが入っていた
#p x
for h in hon
  if x==h
    print "hon"
  end
end
for h in pon
  if x==h
    print "pon"
  end
end
for h in bon
  if x==h
    print "bon"
  end
end
