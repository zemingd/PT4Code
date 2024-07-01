s=gets.chomp.split("").map(&:to_i)
temp=s.dup
k=gets.to_i
s.each_with_index{|a,i|
  s[i]=a*5000000000000000 if a!=1
}
sum=0
res=0
s.each_with_index{|a,i|
  sum+=a
  if sum > k
    res=i
    break
  end
}
puts temp[res]
