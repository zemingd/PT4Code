n=gets.to_i

n.times.each do |k|
    k=k+1
    if k<6
        p 0
        next
    end
    v=[*1..k**0.5]
    array=v.repeated_permutation(3).to_a

    count=0
    for j in 0..array.length-1
        if array[j][0]**2+array[j][1]**2+array[j][2]**2+array[j][0]*array[j][1]+array[j][0]*array[j][2]+array[j][2]*array[j][1]==k
            count+=1
        end
    end
       
    p count
end