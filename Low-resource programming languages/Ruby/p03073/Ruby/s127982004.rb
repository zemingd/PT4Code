s=gets.chomp.split("").map{|s| s.to_i}
a,b=0,0

for i in 0..s.size-1
  if (s[i]==0 && i%2==0) || (s[i]==1 && i%2==1)
    a+=1
  end

  if (s[i]==0 && i%2==1) || (s[i]==1 && i%2==0)
    b+=1
  end
end

if a<b
  puts a
else
  puts b
end