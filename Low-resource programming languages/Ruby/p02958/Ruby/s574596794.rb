n=gets.to_i
s=gets.chomp
a=s.sort
sum=0
for i in 0..n-1
  sum+=1 if s[i]!=a[i]
end
puts sum<=2? :YES: :NO
