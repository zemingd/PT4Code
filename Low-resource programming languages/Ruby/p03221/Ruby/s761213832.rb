def sixnumber(aaa)
    
    aaa = aaa.to_s
    ll = aaa.length
    
    (6-ll).times{
        
        aaa = "0"+aaa
    }
    
    return aaa
    
end


n,m = gets.split.map(&:to_i)

arr = []

ansarray = Array.new(m,0)

i = 0
m.times{
    
    aa = gets.split.map(&:to_i)
    
    aa+=[i]
    i+=1
    arr<<aa}


arr = arr.sort



i = 0
count = 1
m.times{
    
    if i>0 && arr[i][0] == arr[i-1][0]
        
        count+=1
        
    else 
        count = 1
    end
    pre = arr[i][0]
    id = arr[i][2]
    
    ansarray[id] = sixnumber(pre)+sixnumber(count)
    
    
    i+=1
}


i = 0
m.times{
    
    puts ansarray[i]
    i+=1
}






