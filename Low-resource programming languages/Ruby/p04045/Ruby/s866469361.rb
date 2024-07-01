n,k=gets.split.map(&:to_i)
ns=n.to_s.split("").map(&:to_i).reverse
ds=gets.split.map(&:to_i)
ans=[0]*5
now=-1
ns.each do |i|
  ans[now]+=i
  if ds.include?(ans[now])
    if ans[now]==9
      ans[now]=0
      ans[now-1]+=1
    else
      ans[now]+=1
    end
  elsif ans[now]>9
    ans[now]%=10
    ans[now-1]+=1
  end
  now-=1
end
puts ans.join("").to_i
