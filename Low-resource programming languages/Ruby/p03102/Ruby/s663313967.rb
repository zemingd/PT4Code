def bb
    n,m,c = gets.chomp.split(/\s/).map{|x| x.to_i}
    b = gets.chomp.split(/\s/).map{|x| x.to_i}

    s = 0
    for i in 1..n
        a = gets.chomp.split(/\s/).map{|x| x.to_i}

        d = 0
        for j in 0..(a.length-1)
            d += a[j] * b[j]
        end
        s += 1 if d + c > 0
    end

    puts s
end

bb