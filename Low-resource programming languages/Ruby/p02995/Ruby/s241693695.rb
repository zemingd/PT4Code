(a,b,c,d)=gets.split.map(&:to_i)

divc = b/c - (a-1)/c
divd = b/d - (a-1)/d
cd = c.lcm(d)
divcd = b/cd - (a-1)/cd

r = (b-a+1) - (divc+divd-divcd)
p r;