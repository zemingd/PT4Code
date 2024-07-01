n,x=gets.split.map &:to_i;a=gets.split.map &:to_i;a.sort!;l=a.pop;c=a.count{|e|x-=e;x>=0};c+=1if x==l
p c