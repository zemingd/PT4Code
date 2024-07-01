ary = gets.split("")
ary_new =[]
ary.each do |n|
    if n =="B" 
        if ary_new.size != 0
            ary.pop
        end
    else
        ary_new.push(n)
    end    
end
print ary_new.join