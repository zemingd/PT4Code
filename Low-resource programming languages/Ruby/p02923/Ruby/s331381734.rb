    n = gets.chomp.to_i
    h = gets.chomp.split(/\s/).map{|x| x.to_i}

    if n == 1
        puts 0
        exit
    end

    o = []
    s = 0
    ms = 0
    for i in 0..(n-2)
        o[i] = h[i]-h[i+1]
        if o[i] >= 0
            s += 1
            ms = [s, ms].max
        else
            s = 0
        end
    end

    if o.max < 0
        puts 0
        exit
    end

    puts ms
