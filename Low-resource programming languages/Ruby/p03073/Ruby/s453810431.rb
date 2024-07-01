S=gets.strip
cnt0=0
cnt1=0
for i in 0...S.size
  if S[i].to_i==(i % 2)
    cnt0+=1
  else
    cnt1+=1
  end
end
puts [cnt0,cnt1].min
