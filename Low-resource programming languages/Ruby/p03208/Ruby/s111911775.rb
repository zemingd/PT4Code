def cc
    n,k = gets.chomp.split(/\s/).map{|x| x.to_i}

    hh = []
    for i in 1..n
        hh.push(gets.chomp.to_i)
    end
    hh = hh.sort

    xx = hh[0..(k-1)]
    yy = hh[-k..-1]

    puts [xx[-1]-xx[0], yy[-1]-yy[0]].min
end

cc