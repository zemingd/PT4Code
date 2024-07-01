n,*a=gets(p).split.map &:to_i
i=0
while a.any?{|x|x.even?}
b=0
a.map!{|x|b==0&&x.even?&&x>2?b=1&&x/=2:x*3}
i+=1
end
p i