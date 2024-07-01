n=gets.to_i
k=[1,6,36,216,1296,7776,46656,9,81,729,6561,59049]
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