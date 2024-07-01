n=gets.to_i
s=gets.chomp.split""
ans=0;n.times do|i| ans=[ans,(s[0,i]&s[i,n]).length].max end;p ans