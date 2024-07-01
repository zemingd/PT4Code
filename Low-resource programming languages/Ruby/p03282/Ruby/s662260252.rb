s=gets.split('').map(&:to_i)
k=gets.to_i
if k==1
  answer=s[0]
elsif k>=2
  j=0
  max=1
  for i in 0..s.count - 1 do
    max=s[i];j=i if max<s[i]
  end
  answer=s[0] if j>k-1
  answer=s[j] if j<=k-1
end
puts answer