n,m=gets.split.map(&:to_i)
h=gets.split.map(&:to_i)
list=Array.new(n){[]}
m.times do
  a,b=gets.split.map(&:to_i)
  a-=1
  b-=1
  list[a] << b
  list[b] << a
end
ans=0
list.each_with_index do |l,i|
  flag=true
  l.each do |t|
    flag=false if h[i]<=h[t]
  end
  ans+=1 if flag
end
p ans
