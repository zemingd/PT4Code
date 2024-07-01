a,b,c,d=gets.split.map &:to_i
a-=1
p (b-((b/c)+(b/d)-(b/d.lcm(c))))-(a-(a/c+a/d-a/d.lcm(c)))
