def cc
    n,k,q = gets.chomp.split(/\s/).map{|x| x.to_i}

    po = Array.new(n, k)
    an = Array.new(100000+1,0)
    for i in 1..q
        an[gets.chomp.to_i-1] += 1
    end

    for i in 1..n
        puts po[i-1] - (q - an[i-1]) > 0 ? 'Yes' : 'No'
    end
end

cc
