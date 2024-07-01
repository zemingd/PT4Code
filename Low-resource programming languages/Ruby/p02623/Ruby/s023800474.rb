def ina;gets.split(' ').map(&:to_i);end
n,m,k=ina
an=ina
bn=ina
baccv,baccc=0,0
bn.each do |x|
  break unless baccv+x<=k
  baccv+=x
  baccc+=1
end
aaccv,aaccc=0,0
an.each do |x|
  break unless aaccv+x<=k-baccv
  aaccv+=x
  aaccc+=1
end
res=baccc+aaccc
bn[0,baccc].reverse.each do |bi|
  baccv-=bi
  baccc-=1
  an[aaccc..-1].each do |ai|
    break unless aaccv+ai<=k-baccv
    aaccv+=ai
    aaccc+=1
  end
  tmp=baccc+aaccc
  res=tmp if res<tmp
end
p res