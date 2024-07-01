n=gets.strip.split.map(&:to_i)

ans=[-1,-1,-1]
(0..n[0]).each do |i|
    (0..n[0]-i).each do |j|
            k=n[0]-i-j
            if 10000*i+5000*j+1000*k==n[1]
                ans[0]=i
                ans[1]=j
                ans[2]=k
                break
            
        end
    end
end

puts ans.join(' ')