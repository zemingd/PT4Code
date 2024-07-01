def dd
    x,y,z,k = gets.chomp.split(/\s/).map{|x| x.to_i}
    a = gets.chomp.split(/\s/).map{|x| x.to_i}
    b = gets.chomp.split(/\s/).map{|x| x.to_i}
    c = gets.chomp.split(/\s/).map{|x| x.to_i}

    a = (a.sort)[-k..-1] if k < x
    b = (b.sort)[-k..-1] if k < y
    c = (c.sort)[-k..-1] if k < z

    d = a.product(b, c).sort {|e, f| f[0]+f[1]+f[2] <=> e[0]+e[1]+e[2]}

    for i in 1..k
        j = i - 1
        puts d[j].inject(0){|g,h| g+h}
    end
end

dd
