n=gets.to_i
s=Array.new(n,"")
n.times do |i|
    s[i]=gets.chomp
end

count=1
curr=Array.new(n,0)
s=s.sort
(n-1).times do |i|
    if s[i+1]==s[i]
        count+=1
    else
        curr[i]=count
        count=1
    end
end
curr[n-1]=count

n.times do |i|
    if curr[i]==curr.max
        puts s[i]
    end
end
