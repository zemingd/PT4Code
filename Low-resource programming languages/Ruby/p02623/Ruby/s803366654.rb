N, M , K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
time = 0
count = 0

while time < K
    break if a.length == 0 and b.length == 0
    if a.length == 0 or b.length == 0
        if b.length == 0
            time += a.first
            count +=1 if time <= K
            a.delete_at(0)
        else
            time += b.first
            count +=1 if time <= K
            b.delete_at(0) 
        end
        next
    end
    if a.first < b.first
        time += a.first
        count +=1 if time <= K
        a.delete_at(0)
    else
        time += b.first
        count +=1 if time <= K
        b.delete_at(0)        
    end
end

puts count