n=gets.to_i

sam1=Array.new(n)
sam2=Array.new(n)
sam1=gets.split.map!(&:to_i)
sam2=gets.split.map!(&:to_i)
#数列をint型に変更

kot1=1#sam1
kot2=1#sam2
wai1=0
wai2=0
kazu1=n
kazu2=n
for i in 2..n
  ans1=1
  for j in 1..kazu1
    kazu1-=1
    ans1=ans1*i
  end
  kot1+=ans1*(sam1[wai1]-1)#ans1にnの階上を入力　２の階上で終了にする
  wai1+=1
  for j in 0..n-1
    if sam1[j]>sam1[wai1]
      sam1[j]=sam1[j]-1#大きい数をⅠ小さくする
    end
  end
end
puts kot1
for i in 2..n
  ans2=1
  for j in 1..kazu2
    kazu2-=1
    ans2=ans2*i
  end
  kot2+=ans2*(sam2[wai2]-1)#ans1にnの階上を入力　２の階上で終了にする
  wai2+=1
  for j in 0..n-1
    if sam2[j]>sam2[wai2]
      sam2[j]=sam2[j]-1#大きい数をⅠ小さくする
    end
  end
end
puts kot2
puts (kot1-kot2).abs
