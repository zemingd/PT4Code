n,y = gets.chomp.split().map(&:to_i)
s,t,u = 0
ans = []
for s in 0..n
    if ans.size > 0
        break
    end
    if (y - 10000*s) <= 5000*(n-s)
        for t in 0..(n-s)
            if ans.size > 0
                break
            end 
            for u in 0..(n-s-t) 
                if (s+t+u == n) && (10000*s+5000*t+1000*u == y)
                    ans.push("#{s} #{t} #{u}")
                    break
                end
            end
        end
    end
end

if ans.size > 0
    print ans[0]
else
    print "-1 -1 -1"
end