
def calc(s,t)
    cnt=0
    for c in "a".."z" do
        flag = false
        for i in 0..s.size-1 do
            if(s[i]==c)
                flag=true
                break
            end
        end
        if(flag)
            for i in 0..t.size-1 do
                if(t[i]==c)
                    cnt+=1
                    break
                end
            end
        end
    end
    return cnt
end


n = gets.to_i
str = gets.chomp

ans=0
for i in 1..str.size-1 do
    tmp = calc(str[0,i],str[i,str.size])
    ans = [tmp,ans].max
end

puts ans