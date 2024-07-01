s=gets.chomp
t=gets.chomp
c={}
s.size.times do|i|
  if s[i]!=t[i]
    if c[s[i]]!=nil&&c[s[i]]!=t[i]
      puts :No
      exit
    else
      c[s[i]]=t[i]
    end
  end
end
puts :Yes
