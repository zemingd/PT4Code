n=gets.to_i
a=gets.split.map(&:to_i)

for i in 0..n-1
    if i==n-1
        if a[i-1]^a[0]==a[i]
            next
        else
        puts "No"
        exit
        end
    end
    
    #p (a[i-1]^a[i+1]).to_s(2)
    #p (a[i]).to_s(2)
    if a[i-1]^a[i+1]==a[i]
        next
    else
    puts "No"
    exit
    end
end
puts "Yes"