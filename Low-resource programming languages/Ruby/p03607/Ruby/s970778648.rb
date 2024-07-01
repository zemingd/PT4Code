number=gets.to_i

array=[]

number.times{
    a=gets.to_i
    
    if array.include?(a)
        array.delete(a)
    else 
        array<<a
    end
}


puts array.length