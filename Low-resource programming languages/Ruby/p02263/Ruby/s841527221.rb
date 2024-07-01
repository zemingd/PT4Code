def alds13a
    m = gets.chomp.split(/\s/)#.map{|x| x.to_i}

    n = []
    for i in 0..(m.length-1)
        if m[i] =~ /[0123456789]/
            n.push(m[i])
        else
            b,a = n.pop.to_i, n.pop.to_i
            c = 0
            case m[i]
            when '+'
                c = a + b
            when '-'
                c = a - b
            when '*'
                c = a * b
            end
            n.push(c)
        end
    end

    puts n.pop
end

alds13a
