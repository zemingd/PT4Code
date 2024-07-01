(a,b)=gets.split().map(&:to_i)
d=a/b
r=a%b
f=a.to_f/b
puts printf("%d %d %f",d,r,f)