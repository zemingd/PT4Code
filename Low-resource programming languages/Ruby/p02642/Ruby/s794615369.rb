N = gets.to_i
A = gets.split.map(&:to_i).sort.tally
ans = 0
divisible = Array.new(100010, false)
A.each do |num, count|
    if count > 1
        i = 1
        while i * num < 100001
            divisible[i * num] = true
            i += 1
        end
    else
        if !divisible[num]
            ans += 1
        end
        i = 1
        while i * num < 100001
            divisible[i * num] = true
            i += 1
        end
    end
end
p ans