arr = []
sum = 0
min = 10
index = nil

5.times do |i|
    arr.push(gets.to_i)
    d = arr[i]%10
    if d < min and d != 0
        index = i
        min = d
    end
end

5.times do |i|
    if i != index
        sum += arr[i].ceil(-1) 
    else
        sum += arr[i]
    end
end
    

p sum