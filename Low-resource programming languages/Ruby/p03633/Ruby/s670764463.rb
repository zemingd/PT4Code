def cc070
    n = gets.chomp.to_i

    u = 1
    tn = []
    for i in 1..n
        t = gets.chomp.to_i
        if i == 1
            u = t
        else
            u = u.lcm(t)
        end
        tn.push(t)
    end

    w = true
    ma = tn.max
    tn.each do |t|
        unless ma % t == 0
            w = false
            break
        end
    end

    puts w ? ma : u
end

cc070