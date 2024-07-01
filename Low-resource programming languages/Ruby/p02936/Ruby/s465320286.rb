n,q=gets.split.map(&:to_i)
t={}
s={}
p=[]
(n-1).times{a,b=gets.split.map(&:to_i); t.key?(a) ? t[a]<<b:t[a]=[b]; p[b]=a}
q.times{p,x=gets.split.map(&:to_i);s.key?(p) ? s[p]+=x:s[p]=x}
r=s.dup

tl=[[1]]
i=0
l=[1]
while true
  nl=[]
  l.each{|i| nl.concat(t[i]) if t.key?(i)}
  if nl.empty?
    break
  else
    tl << nl
    l=nl
  end
end

tl.each{|l| l.each{|i| 
  if r.key?(i) 
    if t.key?(i)
      t[i].each{|j| r[j]=0 if r[j].nil?;r[j]+=r[i]}
    end
  end
}}
puts r.to_a.sort{|a,b| a[0]<=>b[0]}.map{|i| i[1]}.join(" ")