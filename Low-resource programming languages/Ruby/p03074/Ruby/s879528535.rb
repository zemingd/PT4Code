n,k=gets.split.map &:to_i
s=gets.chomp
a=[0,0]
l='1'
s.chars{|c|
if c==l
a[-1]+=1
else
a<<a[-1]+1
end
l=c
}
p ((a.size-k)/2).times.map{|i|a[i*2+k*2+1].to_i-a[i*2]}.max||a[-1]