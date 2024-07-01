s=gets.chomp
flag=true
for i in 0...s.size
  flag=s[i]==s[i+1] ? false : flag
end
puts flag ? "Good" : "Bad"