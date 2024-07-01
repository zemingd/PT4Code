n = gets.to_i
a = 0
b = 1
i = 1
c = 0
while i<=n do
    a = 0
    b = 1
    while b<=i do
        if i % b==0
            a+=1
            end
        b+=1
        end
    if a==8 && i%2!=0
        c+=1
        end
    i+=1
    end
puts c