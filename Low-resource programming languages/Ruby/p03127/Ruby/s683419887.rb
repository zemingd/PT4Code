n = gets.to_i
hp = gets.split(" ").map(&:to_i)
hp = hp.sort!.reverse
i = 0
lit = hp[0]
ans = hp[0]
del = 0
while i < n - 1
   if hp[i] % hp[i+1] < ans
        lit = hp[i] % hp[i+1]
        del = hp[i]
    end
    i += 1
end

if lit == 0
    puts hp[n-1]
else
    hp.select{|n| n > lit}
    hp.delete(del)
    i = 0
    while hp.length - 1 > i
        if hp[i] % lit < ans
            ans = hp[i] % lit
        end
        i += 1
    end
    puts ans
end

