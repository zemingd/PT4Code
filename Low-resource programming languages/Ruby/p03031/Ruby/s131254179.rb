s=gets.chomp
n=gets.chomp
na=s.size-n.size
max=n.size
for i in 0..na
  sum=0
  for j in 0...n.size
    if s[i+j]!=n[j]
      sum+=1
    end
  end
  max=[max,sum].min
end
puts max
