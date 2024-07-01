k,s=gets.split.map(&:to_i)
ans=[-1]*3
0.upto([k,s/10000].min) do |i|
    y=i*10000
    0.upto([k,s-y].min) do |j|
        h=j*5000
        l=[k-i-j,0].max
        ans=[i,j,l] if y+h+l*1000==s
    end
end
puts ans.join(" ")