s=gets.chomp

count=0
n=s.length
n.times do |i|
    if i%2==0
        if s[i]=="1"
            count+=1
        end
    else
        if s[i]=="0"
            count+=1
        end
    end
end
ans=count
count=0
n=s.length
n.times do |i|
    if i%2==0
        if s[i]=="0"
            count+=1
        end
    else
        if s[i]=="1"
            count+=1
        end
    end
end
ans=[ans,count].min
puts ans
