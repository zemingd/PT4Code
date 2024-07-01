s=gets.chomp
t=gets.chomp
c=[]
s.size.times do|i|
  if s[i]==t[i]
    c<<s[i]
  end
end
s.size.times do|i|
  if s[i]!=t[i]&&(c.include?(s[i])||c.include?(t[i]))
    puts :No
    exit
  end
end
puts :Yes
