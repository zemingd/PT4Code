n,q=gets.split.map(&:to_i)
t={}
s={}
(n-1).times{a,b=gets.split.map(&:to_i);t[a].nil? ? t[a]=[b] : t[a]<<b}
q.times{p,x=gets.split.map(&:to_i);s[p].nil? ? s[p]=x:s[p]+=x}
r=s.dup
t.each{|k,v| v.each{|i| r[i]=0 if not r.include?(i);r[i]+=r[k]}}
puts r.to_a.sort{|a,b| a[0]<=>b[0]}.map{|i| i[1]}.join(" ")