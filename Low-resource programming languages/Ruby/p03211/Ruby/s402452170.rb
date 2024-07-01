
def bb

    s = gets.chomp.scan(/./).map {|x| x.to_i}

    ns = []
    for i in 0..(s.length-3)
        ns.push(((s[i]*100 + s[i+1]*10 + s[i+2]) - 753).abs)
    end

    puts ns.min
end

bb