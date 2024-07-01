s=gets.chomp
t=gets.chomp
c={}
s.size.times do|i|
  if s[i]!=t[i]
    if (c[s[i]]!=nil&&c[s[i]]!=t[i])||(c[t[i]]!=nil&&c[t[i]]!=s[i])
      puts :No
      exit
    else
      c[s[i]],c[t[i]]=t[i],s[i]
    end
  end
end
puts :Yes
