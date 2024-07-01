X=gets.to_i
max=1
a=2
while a**2<=X
    b=a**2
    while b<=X
        if b>max
            max=b
        end
        b*=a
    end
    a+=1
end
puts max
