N,K = gets.split.map{|tmp|tmp.to_i}
A = gets.split.map{|tmp|tmp.to_i}
count = {}
A.each do |a|
    if count[a] == nil
        count[a] = 1
    else
        count[a] += 1
    end
end
puts count.to_s
if count.keys.length <= K
    puts 0
else
    s = 0
    while true
        if count.keys.length <= K
            puts s
            break
        end
        minKey = nil
        minValue = 2000000
        count.each do |key,value|
            if minValue >= value
                minValue = value
                minKey = key
            end
        end
        if minKey != nil
            count.delete(minKey)
            puts count.to_s
            s+=minValue
        end
    end
end