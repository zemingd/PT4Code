a,b,c,d=gets.split.map &:to_i
e=c.lcm d
kai1=b/c-(a-1)/c
kai2=b/d-(a-1)/d
kai3=b/e-(a-1)/e
puts (b-a+1)-(kai1+kai2-kai3)
