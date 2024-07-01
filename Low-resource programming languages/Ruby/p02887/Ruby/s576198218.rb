n=gets.to_i-1
s=gets.chomp
sum=1
1.upto(n){|i|sum+=1 if s[i]!=s[i-1]}
p sum