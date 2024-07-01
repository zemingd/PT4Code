N = gets.to_i
A = gets.split.map(&:to_i).sort.tally
ans = 0
divisible = Array.new(1000100, false)
A.each do |num, count|
    if count == 1 && !divisible[num]
        ans += 1
    end
    i = 1
    while i * num < 1000050
        divisible[i * num] = true
        i += 1
    end
end
p ans