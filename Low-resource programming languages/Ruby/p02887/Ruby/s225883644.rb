n=gets.to_i
s=gets.chomp
i=0
l=0
while i<n
  j=i
  j+=1 while s[i]==s[j+1]
  l+=1
  i=j+1
end