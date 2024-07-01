n=gets.to_i

sam1=Array.new(n)
sam2=Array.new(n)
sam1=gets.split.map!(&:to_i)
sam2=gets.split.map!(&:to_i)
#数列をint型に変更

kot1=1#sam1
kot2=1#sam2
kazu1=0
kazu2=0
ans1=1
ans2=1
for j in n..2
  for i in 1..n do
    ans1*=i
  end
  kot1+=ans1-ans1/sam1[kazu1]#ans1にnの階上を入力　２の階上で終了にする
  kazu1+=1
end
for l in n..2
  for m in 1..n do
    ans2*=m
  end
  kot2+=ans2-ans2/sam2[kazu2]#ans1にnの階上を入力　２の階上で終了にする
  kazu2+=1
end
puts (kot1-kot2).abs
