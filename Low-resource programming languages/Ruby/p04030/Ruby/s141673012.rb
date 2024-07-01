# Your code here!

s=gets.chomp

n = s.size
ans=""
for i in 0..n-1 do
    c = s[i]
    if(c=="B")
        if(ans.size>0)
            ans.chop!
        end
    else
        ans+=c
    end
end

puts ans