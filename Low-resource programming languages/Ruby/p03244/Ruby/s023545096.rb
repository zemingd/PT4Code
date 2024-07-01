n=gets.to_i
s=gets.split.map &:to_i
h1=Hash.new();h2=Hash.new()
for i in 0...n
if i.odd?
  if h1[s[i]]==nil
    h1[s[i]]=1
  else
    h1[s[i]]+=1
  end
else
  if h2[s[i]]==nil
    h2[s[i]]=1
  else
    h2[s[i]]+=1
  end
end
end
ans1=h1.sort_by{|k,v|-v}.shift(2)
ans2=h2.sort_by{|k,v|-v}.shift(2)
kai1=ans1[0][1]-n/2==0? 0:ans1[1][1]
kai2=ans2[0][1]-n/2==0? 0:ans2[1][1]
if ans1[0][0]==ans2[0][0]
  puts n-([ans1[0][1]+kai1,ans2[0][1]+kai2].max)
else
  puts n-ans1[0][1]-ans2[0][1]
end
