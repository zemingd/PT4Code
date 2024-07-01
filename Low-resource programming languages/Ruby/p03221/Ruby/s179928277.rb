def cc
    n,m = gets.chomp.split(/\s/).map{|x| x.to_i}

    py = []
    for i in 0..(n)
        py[i] = []
    end

    for i in 1..m
        pr, y = gets.chomp.split(/\s/).map{|x| x.to_i}
        py[pr].push([i-1, y])
    end

    for i in 0..(n)
        py[i] = py[i].sort {|a,b| (a[1] <=> b[1]).nonzero? || a[2] <=> b[2]}
    end
    #p py
    #p py.sort {|a,b| a[1].sort {|c,d| c[1]<=>d[1]} > b[1] }
    #p py.sort {|a,b| (a[1] <=> b[1]).nonzero? || a[2] <=> b[2]}

    cnt = 0
    for i in 0..(n)
        pz = py[i]
        pz.each_with_index do |pa,idx|
            pa.push(cnt, idx+1)
        end
        cnt += 1
    end
    py.flatten(1).sort {|a,b| a[0] <=> b[0]}.each do |pz|
        puts sprintf("%06d%06d", pz[2], pz[3])
    end

end

cc