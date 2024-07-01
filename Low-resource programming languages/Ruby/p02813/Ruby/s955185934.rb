n=gets.to_i

sam1=Array.new(n)
sam2=Array.new(n)
sam1=gets.split.map!(&:to_i)
sam2=gets.split.map!(&:to_i)
#数列をint型に変更

kot1=1#sam1
kot2=1#sam2
kazu1=n
kazu2=n
for i in 0..n-2
  ans1=1
  for j in 1..kazu1
    ans1=ans1*j
  end#ans1=nの階上
  kot1+=ans1/kazu1*(sam1[i]-1)#ans1にnの階上を入力　２の階上で終了にする
  kazu1-=1
  for k in 0..n-1
    if sam1[k]>sam1[i]
      sam1[k]=sam1[k]-1#大きい数を1小さくする
    end
  end
end
for i in 0..n-2
  ans2=1
  for j in 1..kazu2
    ans2=ans2*j
  end#ans1=nの階上
  kot2+=ans2/kazu2*(sam2[i]-1)#ans1にnの階上を入力　２の階上で終了にする
  kazu2-=1
  for k in 0..n-1
    if sam2[k]>sam2[i]
      sam2[k]-=1#大きい数を1小さくする
    end
  end
end
puts (kot1-kot2).abs
