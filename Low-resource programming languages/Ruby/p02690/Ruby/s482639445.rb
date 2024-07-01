x = gets.to_i
a = -120
b = -120
i = 0
240.times{|t|
    240.times{|k|
        if (a**5 - b**5)== x then
            print a," ",b
            exit
        end
        b+=1
    }
    a+=1
    b=-120
}