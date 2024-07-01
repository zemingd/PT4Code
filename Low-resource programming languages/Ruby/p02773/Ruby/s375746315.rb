n=gets.to_i
s=Array.new(n,"")
n.times do |i|
    s[i]=gets.chomp
end

count=1
curr=Array.new(n,0)
s=s.sort
i=0
while i<n
    curr[i]=s.count(s[i])
    i+=curr[i]
end

n.times do |i|
    if curr[i]==curr.max
        puts s[i]
    end
end
