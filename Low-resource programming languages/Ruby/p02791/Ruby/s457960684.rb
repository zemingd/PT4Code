n=gets.to_i
s=gets.split.map(&:to_i)

count=1
for i in 1..s.length-1

    j=i-1
    if s[j] > s[i]
        count+=1
    end
end
        
    

puts count