n=gets.to_i

a = []
n.times do |i|
    a << gets.to_i
end

memo = {}
c = 1
i = 1
while memo[i] == nil
    if a[i-1] == 2 
        puts c
        exit
    else
        memo[i] = true
        i = a[i-1]
        c += 1
    end
    
end
puts -1