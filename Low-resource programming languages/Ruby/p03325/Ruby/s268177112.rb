n,*a=gets(p).split.map &:to_i
s=0
a.map{|x|
while x.even? do
x/=2
s+=1
end
}
p s