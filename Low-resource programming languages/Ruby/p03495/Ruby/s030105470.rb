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
if count.keys.length <= K
    puts 0
else
    count = count.sort_by{|_,v|v}
    s = 0
    index = 0
    while count.length - index > K
        if count.length !=0 && index < count.length
            s+=count[index][1]
            index+=1
        end
    end
    puts s
end