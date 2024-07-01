def cc
    n = gets.chomp.to_i
    ev = []
    od = []
    a = gets.chomp.split(/\s/).map{|x|
        x = x.to_i
        if x.even?
            ev.push(x)
        else
            od.push(x)
        end
        x
    }

    if n == 1
        puts a[0]
        exit
    elsif n == 2
        puts a[0].gcd(a[1])
        exit
    end

    if ev.length >= n/2
        od = od.sort
        od.delete_at(0)
    else
        ev = ev.sort
        ev.delete_at(0)
    end
    b = od+ev

    l = b.length

    mg = [1, b[0].gcd(b[1])].max
    for i in 0..(l-3)
        mg = [mg, mg.gcd(b[i+2])].max
    end

    puts mg
end

cc
