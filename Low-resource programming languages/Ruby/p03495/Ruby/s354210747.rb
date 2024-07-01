a=[]
n,k=gets.split.map(&:to_i)
gets.split.map(&:to_i).each do |i|
  a[i]||=0
  a[i]+=1
end
ans=a.compact.sort.reverse[k..]
p ans ? ans.sum : 0
