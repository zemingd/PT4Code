def bb
    n,m = gets.chomp.split(/\s/).map{|x| x.to_i}

    aa = gets.chomp.split(/\s/).map{|x| x.to_i}[1..-1]
    for i in 2..n
        aa &= gets.chomp.split(/\s/).map{|x| x.to_i}[1..-1] # 先頭は捨てる
    end

    puts aa.length
end

bb
