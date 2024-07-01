ans,t=0,[]
n,d=gets.split.map &:to_i
n.times{t<<gets.split.map(&:to_i)}
t.combination(2).to_a.map{|a,b|
dist=0
d.times{|i|dist+=(b[i]-a[i]).abs**2}
ans+=1 if (dist**0.5).to_s=~/^[0-9]+\.0$/
}
p ans