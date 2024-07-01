n=gets.to_i
k=[1,6,9,36,81,216,729,1296,6561,7776,46656,59049]
s=Array.new(100001,0)
for j in 1..n
  s[j]=j
end
for i in 1..11
  if k[i] < n then
    for j in k[i]..n
      s[j]=1+s[j-k[i]] if s[j] > 1+s[j-k[i]]
    end
  end
end
puts s[n]