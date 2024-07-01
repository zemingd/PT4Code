x=gets.to_i
v=x**0.5.to_i

for i in -100..100
    for j in -100..100
        if i**5-j**5==x
            puts [i,j].join(" ")
            exit
        end
    end
end