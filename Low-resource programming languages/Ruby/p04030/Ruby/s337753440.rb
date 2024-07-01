ary = gets.split("")
(0..ary.length-1).each do |n|
    if ary[n]=="B"
        ary[n-1] =""
        ary[n] =""
    end
    
end
print ary.join