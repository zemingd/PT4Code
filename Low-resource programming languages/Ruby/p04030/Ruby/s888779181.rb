ary = gets.split("")
(0..ary.length).each do |n|
    if ary[n]=="B" && n ==0
        ary[n] =""
    end
     if ary[n]=="B" 
        ary[n-1] =""
        ary[n] =""
    end
end
print ary