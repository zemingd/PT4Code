a,b,c,d=gets.split.map &:to_i
ans=0
for i in 0...100
    if a<=i&&i<b && c<=i&&i<d
        ans+=1
    end
end
p ans