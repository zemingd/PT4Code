n=gets.to_i
l=gets.split.map(&:to_i)
ans=0
l.sort!.reverse!
for i in 0..(n-3)
  j=i+1
  k=i+2
  until j==n-1||l[i]>=l[j]+l[k] do
    until k==n||l[i]>=l[j]+l[k]
      ans=ans+1
     k=k+1
    end
    j=j+1
    k=j+1
  end
end
puts ans
