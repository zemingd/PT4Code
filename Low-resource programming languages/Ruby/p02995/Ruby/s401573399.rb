a,b,c,d = gets.split.map(&:to_i)

e = c.lcm(d)

lc = (a-1)/c
ld = (a-1)/d
le = (a-1)/e
rc = b/c
rd = b/d
re = b/e

p (b-a+1)-((rc-lc) + (rd-ld) - (re-le))
