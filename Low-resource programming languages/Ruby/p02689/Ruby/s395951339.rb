n,m=gets.split.map &:to_i
h=gets.split.map &:to_i
z=[true]*n
m.times{|i|
a,b=gets.split.map &:to_i
a-=1
b-=1
z[a]=false if h[a]<=h[b]
z[b]=false if h[b]<=h[a]
}
p z.count{|a|a}