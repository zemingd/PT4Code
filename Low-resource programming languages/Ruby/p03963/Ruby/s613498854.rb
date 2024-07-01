def bb046
    n,k = gets.chomp.split(/\s/).map{|x| x.to_i}

    if n == 1
        puts k
        exit
    end
    if k == 2
        puts 2
        exit
    end

    r = k
    for i in 2..n
        r *= (k-1)
    end

    puts r
end

bb046