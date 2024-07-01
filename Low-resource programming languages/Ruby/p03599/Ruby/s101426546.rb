a,b,c,d,e,f=gets.split.map(&:to_i)
a*=100
b*=100
as,bs,cs,ds=[a,b,c,d].map{ |x| (f/x+1).times.map{ |n| x*n}}
ws=as.product(bs).map{ |w| w[0]+w[1]}.select{ |w| w<=f && w!=0}.uniq.sort
ss=cs.product(ds).map{ |s| s[0]+s[1]}.select{ |s| s<=f}.uniq.sort
fs=ws.product(ss).select{ |r| r[0]+r[1]<=f}.select{ |r| r[1].fdiv(r[0]+r[1])<=e.fdiv(100+e)}
ans=fs.sort{ |l,r| r[1].fdiv(r[0]+r[1])<=>l[1].fdiv(l[0]+l[1])}.first
puts [ans[0]+ans[1],ans[1]]*" "
