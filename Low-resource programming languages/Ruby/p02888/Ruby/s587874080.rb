n = gets.to_i
l = gets.split.map(&:to_i).sort
ans=0
n.times do |i|
    for j in i+1..n-1
        x=l[i]+l[j]
        for k in j+1..n-1
            if l[k] < x
                ans+=1
            else
                break
            end
        end
    end
end
puts ans