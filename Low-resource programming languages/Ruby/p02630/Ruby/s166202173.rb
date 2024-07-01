def ina;gets.split(' ').map(&:to_i);end
def ini;gets.to_i;end
n=ini
a=ina
h={}
a.each do |ai|
  if h.key? ai
    h[ai]+=1
  else
    h[ai]=1
  end
end
s=a.sum
q=ini
q.times do
  b,c=ina
  if h.key? b
    h[c]=0 unless h.key? c
    s+=h[b]*(c-b)
    h[c]+=h[b]
    h[b]=0
  end
  p s
end