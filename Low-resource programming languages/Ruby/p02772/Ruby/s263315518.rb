n   = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
flag = 1

num.each{|t|
    if (t%2) == 0 then 
        if t%3 == 0 || t%5 == 0 then
            
        else
            flag = 0
        end
    end
}


if flag == 0 then
    puts("DENIED")
else  
    puts("APPROVED")
end
