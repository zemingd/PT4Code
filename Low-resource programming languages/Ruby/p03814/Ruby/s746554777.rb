s=gets.chomp
ans=0
for i in 0...s.size
    for j in i+1...s.size
        ans=[ans,j-i+1].max if s[i..j][0]=='A'&&s[i..j][-1]=='Z'
    end
end
p ans