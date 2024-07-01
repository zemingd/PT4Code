n,*a=gets(p).split.map &:to_i
x=1;a.map{|i|i==x&&x+=1};p x>1?a.size-x+1:-1