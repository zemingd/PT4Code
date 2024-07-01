n,m=gets.split.map &:to_i
h=gets.split.map &:to_i
a=[],b=[];ans=Array.new(n,1)
m.times{|v|a[v],b[v]=gets.split.map &:to_i
  if h[a[v]-1]>h[b[v]-1]
    ans[b[v]-1]=0
  elsif h[a[v]-1]==h[b[v]-1]
    ans[b[v]-1]=0
    ans[a[v]-1]=0
  else
    ans[a[v]-1]=0
  end
}
puts ans.sum
