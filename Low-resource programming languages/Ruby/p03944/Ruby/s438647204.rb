(a,b,c=$_.split.map &:to_i;$.<2?(x,y,s,t=a,b,0,0):c>3?y>b&&y=b:c>2?t<b&&t=b:c>1?x>a&&x=a:s<a&&s=a)while gets;p [(x-s)*y-=t,0].max