s=gets.chomp
t=gets.chomp
c1,c2={},{}
s.size.times do|i|
  if s[i]!=t[i]
    if c1[s[i]]!=nil&&c1[s[i]]!=t[i]||c2[t[i]]!=nil&&c2[t[i]]!=s[i]
      puts :No
      exit
    else
      c1[s[i]],c2[t[i]]=t[i],s[i]
    end
  end
end
puts :Yes
