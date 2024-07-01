n=gets.to_i
x=gets.split.map &:to_i
y=x.sort
c=y[n/2-1]
d=y[n/2]
x.each{|e|
if  e<d 
p d 
else
p c
end
}
