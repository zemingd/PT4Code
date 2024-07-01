def cc127
    n,m = gets.chomp.split(/\s/).map{|x| x.to_i}

    l = 0
    r = 0
    z = false
    for i in 1..m
        nl,nr = gets.chomp.split(/\s/).map{|x| x.to_i}
        next if z
        if i == 1
            l = nl
            r = nr
        else
            if nl > r or nr < l
                z = true
                next
            end

            l = [l, nl].max
            r = [r, nr].min
        end
    end

    if r-l < 0 or z
        puts 0
        exit
    end
    puts r-l+1
end

cc127