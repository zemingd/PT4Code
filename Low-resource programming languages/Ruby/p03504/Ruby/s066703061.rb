N,C=gets.split.map &:to_i
q=N.times.map{s,t,c=gets.split.map &:to_i;[[s-0.5,1,c],[t+0.5,0 ,c]]}.flatten(1).sort
sum=dbl=0
cnt=[0]*(C+1)
p q.each.map{|a,b,c|
  if b==1
    sum+=1
    cnt[c]+=1
    dbl += 1 if 1<cnt[c]
  else
    dbl -= 1 if 1<cnt[c]
    cnt[c]-=1
    sum-=1
  end
  sum-dbl
}.max
